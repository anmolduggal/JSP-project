<%@page import="java.sql.*" %>

<jsp:include page="header.jsp"/>
	
<div class="container ">

  <h2 class="display-4 head2" align="center" style="text-shadow: 20px">Deans
  </h2>
    <div id="demo">
  <b><p>Details:</b><br>
         <jsp:useBean   id="connobj"  class="dboperation.dbconnect"    />

  <table class="table table-striped">
  <thead>
    <tr >
      <th scope="col" ><b>S.No</th></b>
      <th scope="col" ><b>Designation</th></b>
      <th scope="col" ><b>Name</th></b>
    </tr>
     </thead>
  <tbody>

    <%Connection con=null;
		Statement st;
		ResultSet rs;
		try{
                    con=connobj.getConnect();
            		st=con.createStatement();
                        int i=1;
                      
			rs=st.executeQuery("select * from faculty where Position = 'Dean'");
                        while(rs.next()){
    %>
    <tr>
      <th ><%= i %></th>
      <td ><%= rs.getString(10)%></td>
      <td><%= rs.getString(2)%></td>
    </tr>
    
    <%i++; }
out.println("</tbody></table>");
}
catch(Exception e)
		{
			System.out.println(e.toString());
		}

    %>
   
  </table>
</div>
</div>
<jsp:include page="footer.jsp"/>

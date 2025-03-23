<%@include file="csslink.jsp"%>

<html>
  <body>
  
    <%
      String eid = request.getParameter("eid");
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp10","root","micql@5132");
    
      PreparedStatement ps1 = cn.prepareStatement("select * from employeeinfo where eid=?");
      ps1.setString(1, eid);
      
      ResultSet rst = ps1.executeQuery();
      if(rst.next())
      {
    %>
    	  <div class="dvv">
    	   <label style="color: red; font-size: 1.7vw">Employee with ID <%=eid%> already exists!</label>
    	  </div>
    	  <jsp:include page="add-employee.jsp" />
    <%
    	  return;
      }
      
      PreparedStatement ps = cn.prepareStatement("insert into employeeinfo values(?, ?, ?, ?, ?, ?, ?)");
      ps.setString(1, eid);
      ps.setString(2, request.getParameter("firstname"));
      ps.setString(3, request.getParameter("lastname"));
      ps.setString(4, request.getParameter("phone"));
      ps.setString(5, request.getParameter("emailid"));
      ps.setString(6, request.getParameter("department"));
      ps.setString(7, request.getParameter("salary"));
    
      ps.executeUpdate();
      
      response.sendRedirect("/employee_dashboard");
    %>
  </body>
</html>

<%@include file="csslink.jsp"%>

<html>
  <body>
    <%
      String eid = request.getParameter("eid");
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp10","root","micql@5132");
     
      PreparedStatement ps = cn.prepareStatement("update employeeinfo set firstname=?, lastname=?, phone=?, emailid=?, department=?, salary=? where eid=?");
      ps.setString(1, request.getParameter("firstname"));
      ps.setString(2, request.getParameter("lastname"));
      ps.setString(3, request.getParameter("phone"));
      ps.setString(4, request.getParameter("emailid"));
      ps.setString(5, request.getParameter("department"));
      ps.setString(6, request.getParameter("salary"));
      ps.setString(7, eid);
    
      ps.executeUpdate();
      
      response.sendRedirect("/employee_dashboard");
    %>
  </body>
</html>

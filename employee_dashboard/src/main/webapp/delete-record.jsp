<%@ include file="csslink.jsp"%>

<html>
<body>

	<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp10", "root", "micql@5132");

	PreparedStatement ps = cn.prepareStatement("delete from employeeinfo where eid=?");
	ps.setString(1, request.getParameter("eid"));

	ps.executeUpdate();

	response.sendRedirect("/employee_dashboard");
	%>
</body>
</html>

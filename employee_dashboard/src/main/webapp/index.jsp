<%@include file="csslink.jsp"%>

<html>
<style>
a {
	font-size: 1.4vw;
	text-decoration: underline;
	font-weight: bold;
}

td {
	font-size: 1.4vw;
}
</style>

<body>
	<div class="dvv">
		<label class="lal">EMPLOYEE DASHBOARD</label>
	</div>

	<div class="container">
		<div>
			<a href="add-employee.jsp">Add Employee</a>
		</div>

		<div class="card col-md-14 mx-auto" style="border: 3px solid silver">
			<div class="card-body">
				<div class="table scrollit">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Employee ID</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Phone Number</th>
								<th>Email ID</th>
								<th>Department</th>
								<th>Salary</th>
								<th style="color: #ffb14d">Action</th>
							</tr>
						</thead>

						<tbody>
							<%
							Class.forName("com.mysql.cj.jdbc.Driver");
							Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp10", "root", "micql@5132");

							Statement st = cn.createStatement();
							ResultSet rst = st.executeQuery("select * from employeeinfo");

							while (rst.next()) {
								String eid = rst.getString(1);
							%>
							<tr>
								<td><%=eid%></td>
								<td><%=rst.getString(2)%></td>
								<td><%=rst.getString(3)%></td>
								<td><%=rst.getString(4)%></td>
								<td><%=rst.getString(5)%></td>
								<td><%=rst.getString(6)%></td>
								<td><%=rst.getString(7)%></td>

								<td>
								 <a href="edit-record.jsp?eid=<%=eid%>">Edit | </a>
								 <a href="delete-record.jsp?eid=<%=eid%>"onclick="return confirm('Are you sure to delete?')">Delete</a>
								</td>
							</tr>

							<%
							}
							%>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

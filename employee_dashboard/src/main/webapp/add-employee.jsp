<%@include file="csslink.jsp"%>

<html>
<body>
	<div class="dvv">
		<label class="lal">ADD EMPLOYEE FORM</label>
	</div>

	<div class="container">
		<div class="card col-md-10 mx-auto">
			<div class="card-body">

				<form action="save-record.jsp" method="post">
					<div class="row">
						<div class="form-group col-md-10">
							<label>Enter Employee ID</label><span> *</span> <input
								type="number" class="form-control" name="eid" required>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-5">
							<label>Enter First Name</label><span> *</span> <input type="text"
								class="form-control" name="firstname" required>
						</div>

						<div class="form-group col-md-5">
							<label>Enter Last Name</label><span> *</span> <input type="text"
								class="form-control" name="lastname" required>
						</div>
					</div>

					<div class="row">
						<div class='form-group col-md-5'>
							<label>Enter Phone Number</label><span> *</span> <input
								type="number" class='form-control' name='phone' required>
						</div>

						<div class='form-group col-md-5'>
							<label>Enter Email ID</label><span> *</span> <input type="email"
								class='form-control' name='emailid' required>
						</div>
					</div>

					<div class='row'>
						<div class='form-group col-md-5'>
							<label for="department">Enter Department</label><span> *</span> <input
								type="text" class='form-control' name='department' required>
						</div>

						<div class='form-group col-md-5'>
							<label>Enter Salary</label><span> *</span> <input type="number"
								class='form-control' name='salary' required>
						</div>
					</div>

					<div class='row'>
						<div class='form-group col-md-10'>
							<button class='btn btn-primary'>Add Record</button>
							<input type="button" value="Back" class="btn btn-secondary"
								onclick="history.back()">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
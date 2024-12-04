<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student List</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* Style for the first row (header) to have a blue background */
.header-row {
	background-color: #007bff;
	color: white;
	text-align: center;
	font-size: 18px;
}

/* Center the buttons in the actions column */
.actions {
	text-align: center;
}

/* Style the delete and update buttons to appear inline */
.btn-group {
	display: flex;
	justify-content: center;
	gap: 10px;
}

/* Form styling to make it more distinct */
form {
	border: 2px solid #ddd;
	padding: 15px;
	border-radius: 5px;
	background-color: #f9f9f9;
}

/* Style to center the entire table */
table {
	margin-top: 20px;
}

/* Additional button hover effect */
.btn:hover {
	opacity: 0.8;
}
</style>
</head>
<body>
	<div class="container">
		<h2 class="text-center mt-4">Student List</h2>
		<table class="table table-bordered">
			<thead>
				<tr class="header-row">
					<th>ID</th>
					<th>Name</th>
					<th>Gender</th>
					<th>Course</th>
					<th>Student Type</th>
					<th>Date of Birth</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<!-- JSTL forEach to loop through the list of students -->
				<c:forEach var="student" items="${students}">
					<tr>
						<td>${student.id}</td>
						<td>${student.name}</td>
						<td>${student.gender}</td>
						<td>${student.course}</td>
						<td>${student.studentType}</td>
						<td>${student.dob}</td>
						<td class="actions">
							<!-- Form for delete with centered buttons -->
							<form
								action="${pageContext.request.contextPath}/delete/${student.id}"
								method="post" class="d-inline">
								<input type="hidden" name="_method" value="DELETE">
								<button type="submit" class="btn btn-danger btn-sm">Delete</button>
							</form> <!-- Update link styled as a button --> <a
							href="update/${student.id}" class="btn btn-primary btn-sm">Update</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<%-- <!-- Redirects to form.jsp when clicked -->
		<a href="${pageContext.request.contextPath}/form.jsp"
			class="btn btn-success">Add New Student</a>
         --%>
	</div>
	
</body>
</html>

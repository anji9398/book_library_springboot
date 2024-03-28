<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view Users</title>
<style type="text/css">
table, th, td {
	border: 1px solid white;
	border-collapse: collapse;
	text-align: center;
}

tr:nth-child(even) {
	background-color: rgba(150, 212, 212, 0.4);
}

th:nth-child(even), td:nth-child(even) {
	background-color: rgba(150, 212, 212, 0.4);
}

td, th {
	background-color: #96D4D4;
}

#customers {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #04AA6D;
	color: white;
}

button {
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

.btn-home {
	background-color: orange;
	color: #fff;
}
</style>


</head>
<body>
	<div class="container">
		<jsp:include page="nav.jsp"></jsp:include>

		<h2>All Users Data</h2>
		<table id="customers">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Department</th>
					<th>Contact</th>
					<th>Delete user</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${userList}" var="i">
					<tr>
						<td>${i.id}</td>
						<td>${i.stuName}</td>
						<td>${i.department}</td>
						<td>${i.contact}</td>
						<td><button class="btn-home">
								<a href="userDelete?id=${i.id}" style="color: white;">Delete
									user</a>
							</button></td>
					</tr>
				</c:forEach>

			</tbody>

		</table>

		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
			integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
			integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
			integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
			crossorigin="anonymous"></script>
	</div>
</body>
</html>
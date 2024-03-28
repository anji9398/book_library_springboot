<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.container-wrapper {
	width: 100%;
	max-width: 400px; /* Adjust as needed */
}

.btn-container {
	display: flex;
	justify-content: space-between;
	/* Add box shadow to the container */
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	padding: 10px; /* Optional: Add some padding to the container */
}

button {
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

.btn-home {
	background-color: #3498db;
	color: #fff;
}

.btn-about {
	background-color: #e74c3c;
	color: #fff;
}

.btn-contact {
	background-color: #2ecc71;
	color: #fff;
}
</style>
</head>
<body>
	<div class="container-wrapper">
		<div class="btn-container">
			<button class="btn-home">
				<a href="addBooks" style="color: white;">Add Books</a>
			</button>
			<button class="btn-about">
				<a href="viewBooks" style="color: white;">View Books</a>
			</button>
			<button class="btn-contact">
				<a href="viewUser" style="color: white;">View users</a>
			</button>

		</div>
	</div>
</body>
</html>

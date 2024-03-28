<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart Books</title>
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

/* CSS */
.button-35 {
	align-items: center;
	background-color: #fff;
	border-radius: 12px;
	box-shadow: transparent 0 0 0 3px, rgba(18, 18, 18, .1) 0 6px 20px;
	box-sizing: border-box;
	color: #121212;
	cursor: pointer;
	display: inline-flex;
	flex: 1 1 auto;
	font-family: Inter, sans-serif;
	font-size: 1.2rem;
	font-weight: 700;
	justify-content: center;
	line-height: 1;
	margin: 0;
	outline: none;
	padding: 1rem 1.2rem;
	text-align: center;
	text-decoration: none;
	transition: box-shadow .2s, -webkit-box-shadow .2s;
	white-space: nowrap;
	border: 0;
	user-select: none;
	-webkit-user-select: none;
	touch-action: manipulation;
}

.button-35:hover {
	box-shadow: #121212 0 0 0 3px, transparent 0 0 0 0;
}
</style>
</head>
<body>
	<jsp:include page="navUsers.jsp"></jsp:include>
	<h1>${userName}</h1>
	<table id="customers">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Author</th>
				<th>Price</th>
				<th>Delete From Cart</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${cartData}" var="i">
				<tr>
					<td><c:out value="${i.id}"></c:out></td>
					<td><c:out value="${i.bookName}"></c:out></td>
					<td><c:out value="${i.author}"></c:out></td>
					<td><c:out value="${i.price}"></c:out></td>

					<td><button class="button-35" role="button">
							<a href="delete/cart?id=${i.id}">Delete</a>
						</button></td>
				</tr>
			</c:forEach>
			 
		</tbody>
	</table>
</body>
</html>
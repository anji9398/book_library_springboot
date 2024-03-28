<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>view Books</title>
  </head>
  <body>
  <div class="container">
    <h1>Book Library</h1>
 <jsp:include page="nav.jsp"></jsp:include>
	
<form action="viewBooks" method="post"></form>
	<table class="table table-hover table-dark">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Author</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Edit Book</th>
				<th>Delete Book</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${books}" var="i">
				<tr>
					<td><c:out value="${i.id}"></c:out></td>
					<td><c:out value="${i.bookName}"></c:out></td>
					<td><c:out value="${i.author}"></c:out></td>
					<td><c:out value="${i.price}"></c:out></td>
					<td><c:out value="${i.bookQuantitys}"></c:out></td>
					<!--  <a href='edit?code="+bb.getCode()+"'>EditBook</a> -->
					
					<td><button type="button" class="btn btn-success">
							<a href='edit?code="${i.id}"' style="color: white;">Update Book</a>
						</button></td>
					<td><button type="button" class="btn btn-success">
							<a href='delete?code="${i.id}"' style="color: white;">Delete Book</a>
						</button></td>
				</tr>

			</c:forEach>
			

		</tbody>
	</table>
			<button class="btn btn-success" > <a href="first1-5Re" style="color: white;">1</a> </button>
			<button class="btn btn-success" > <a href="first6-10Re" style="color: white;">2</a></button>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </div>
  </body>
</html>
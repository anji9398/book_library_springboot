<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>edit book</title>
  </head>
<body>
<jsp:include page="nav.jsp"></jsp:include>
    <div class="container">
    <h1>Update Book Details</h1>
    <h4 class="${alert_class}">${validation}.</h4>
    
    
		<form id="book-form" method="post" action="editBook">

			<label for="book-id">Book Id:</label><br> 
			<span style="color: red;"><b>Note:</b> Don't edit book Id</span><br>
			<input type="text" id="book-id" name="bookId" value="${book.id}"required><br> <br> 
			
			<label for="book-name">Book Name:</label><br> 
			<input type="text" id="book-name" name="bookName" value="${book.bookName}" required><br> <br> 
			
			<label for="author">Author:</label><br> 
			<input type="text" id="author" name="authorName" value="${book.author}" required><br>
			<br> 
			<label for="price">Price:</label><br> 
			<input type="number" id="price" name="bookPrice" value="${book.price}" min="0" step="0.01" required><br> <br> 
			
			<label for="quality">Quality:</label><br> 
			<input type="number" id="Quality" name="bookQuality" value="${book.bookQuantitys}" min="0" step="1" required><br>
			<br>
			<button type="submit" class="btn btn-success">Update</button>
		</form>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 </div>
  </body>
</html>
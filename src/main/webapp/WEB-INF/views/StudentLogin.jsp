<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student login</title>
<style type="text/css">

</style>
</head>
<body>
<h1>User Name is  ${userDetails.stuName}</h1>


<form action="viewBooks" method="post">
<input type="hidden" value="${userDetails.stuName}" name="uname1"> 
<input type="hidden" value="${userDetails.password}" name="password1">
<button><a href="viewBooksForStudent?name=${userDetails.stuName}">View Books</a></button>
<button><a href="seeCartBooks">See Cart Books</a></button> 
 
</form>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->
    <title>Book Details Form</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <style type="text/css">
 
#book-form {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}


label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
}

input[type="text"],
input[type="number"],
select {
    width: 100%;
    padding: 10px;
    margin-bottom: 16px;
    border: 1px solid #ccc;
    border-radius: 4px;
}


button[type="submit"] {
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 4px;
    padding: 10px 20px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button[type="submit"]:hover {
    background-color: #0056b3;
}
      
    </style>
    
</head>

<body>
<jsp:include page="nav.jsp"></jsp:include>
<h4 class="${warning}">${bookvalid}</h4>
<h4 class="${alert_class}">${validation}</h4>
    
    <form id="book-form" method="post" action="addBook">
        <label for="book-name">Book Name:</label>
        <input type="text" id="book-name" name="bookName" required>

        <label for="author">Author:</label>
        <input type="text" id="author" name="authorName" required>

        <label for="price">Price:</label>
        <input type="number" id="price" name="bookPrice" min="0" step="0.01" required>

        <label for="quality">Quality:</label>
       <input type="number" id="Quality" name="bookQuality" min="0" step="1" required>
        <button type="submit">Submit</button>
    </form>
</body>
</html>

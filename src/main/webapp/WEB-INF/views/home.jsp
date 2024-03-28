<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	div
	{
		margin: 15%;
		background-color: skyblue;
		text-align: center;
	    height: 150%;
        width: 60%;
        
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        text-align: center;
       
	}
 
button {
  display: inline-block;
  border-radius: 4px;
  background-color: rgb(0, 128, 0);
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 300px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
 
  
}

button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: 10px;
  transition: 0.5s;
}

button:hover span {
  padding-right: 25px;
}

button:hover span:after {
  opacity: 1;
  right: 0;
}
a{
	color: white;
}

.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
.button2:hover {
  background-color: #3e8e41;
}
</style>
<title>Home Page</title>
</head>
<body style="background-color: rebeccapurple;">
   <div>
	   <h1 id="current"></h1>
	   <script>
     let time = document.getElementById("current");
     setInterval(() =>{
	 let d = new Date();
	 time.innerHTML = d.toLocaleTimeString();
	 },1000)
  </script>
     <button class="button2"><a href="customerLogin.html"><span>AdminLogin</span></a></button>
	 <button class="button2"><a href="studentLogin.html"><span>CustomerLogin</span></a></button>
  
   </div>
</body>
</html>
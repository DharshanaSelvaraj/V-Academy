<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buy Course</title>
<link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans:ital@1&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans:ital@1&family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
    <style> 
        body{
            margin-top: 220px;
            background-image: url(https://image.freepik.com/free-photo/blurred-background-supermarket-aisle-with-products_62890-121.jpg);
            background-size: cover;
            background-attachment: local;
        }
        
        .image{
            margin-left: 900px;
            margin-top: 40px;
            margin-bottom: 1px;
            font-family: 'Balsamiq Sans', cursive;
            font-size: 50px;
            
            font-weight: 500;
        }
        .gen{
            margin-left: 900px;
            margin-top: 20px;
            width: 300px;
            height: 50px;
            font-family: monospace;
            font-size: 20px;
            border-radius: 10px;
        }
        .gety{
        font-family: 'Dancing Script', cursive;
        font-size: 30px;
        margin-left: 50px;
        }
        
        .add{
            border-radius: 10px;
            margin-left: 900px;
            margin-top: 40px;
            font-size: 20px;
            width: 300px;
            height: 50px;
            font-family: monospace;
        }
    </style>
    <body>
                 
        <form action="view">
        <input class="gen" type="submit"  value="Courses contents"><br></form>
        <form action="gen">
        <input class="gen" type="submit"  value="Bill Cart"><br></form>
   
    </body>
</html>
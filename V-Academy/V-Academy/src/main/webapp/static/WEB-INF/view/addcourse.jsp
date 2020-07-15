<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Uploading course</title>
</head>
<style>
        body{
            background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTJGuufUalZisnygZ0RYIJH218oz0FV6zIRW4vlOUI-lBOXye8_);
            background-size: cover;
            background-attachment: local;
        }
       .lab input[type="text"]{
            
            width: 200px;
            height: 50px;
            border-radius: 5px;
        }
       
        .lab{
            width: 500px;
            margin-left: 800px;
            margin-top: 200px;
            height: 400px;
            padding-top: 20px;
            padding-left: 10px;
            background-color: rgba(0,0,0,0.5);
            border-radius: 15px;
        }
        .lab label{
            color:  black;
            font-size: 30px;
            font-weight:300; 
        }
        .lab input[type="submit"]{
            width: 100px;
            height: 40px;
            border-radius: 5px;
            font-size: 20px; 
            margin-left: 200px;
        }
    </style>
    <body>
        <div class="lab">
            <form action=insert method="post">
            <label for="name">Course name</label>
            <input type="text"  id="name" name="course_name" placeholder="  Course name" required><br><br>
<label for="cod" >Course code</label>
            <input type="text"  id="cod" name="course_code" placeholder="  Course code" required><br><br>
<label  for="rate">Course price</label>
<input type="text"  id="rate" name="rate" placeholder="  rate per unit" required><br><br>
<label for="tax">Tax %</label>
<input type="text"  id="tax" name="tax%" placeholder="  tax% of course" required><br><br>
                <input type="submit" value="Add">
            </form>
        </div>
    </body>
</Html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>V-Academy | Shop </title>
</head>

<style type="text/css">
*{
	margin: 0;
	padding: 0;
}

body {
background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTJGuufUalZisnygZ0RYIJH218oz0FV6zIRW4vlOUI-lBOXye8_);
background-repeat: no-repeat;
background-attachment: fixed;
  background-size:100% 100%;  
}
</style>


<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">Home</a>
			<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
					<li><a href="/courses">Courses</a></li>
					<li><a href="/buy">Buy Course</a></li>
					<li><a href="/chat">Live Chat</a></li>
					<li><a href="/show-users">Rank Board</a></li>
					<li><a href="/test">Test Series</a></li>
				</ul>
			</div>
		</div>
	</div>	
<div class ="billdata">
<form action="billadd" method="post">
<input class="tes" type="text" name= code id="para" /><br><br>
<input class="tes" type="text" name=name id="para1" /><br><br>
<input type="text" name=amount class="tes" id="para2" /><br><br>
<input type="text" name=tax id="para3" class="tes"/><br><br>
<input type="text" name=quantity  class="tes"/><br><br>
<input type="submit" class = "tes" value="Add to bill">

</form>
<form action="finalbill">
<input type="submit" class = "tes" value="Finalize bill">
</form>
</div>
</body>
</html>
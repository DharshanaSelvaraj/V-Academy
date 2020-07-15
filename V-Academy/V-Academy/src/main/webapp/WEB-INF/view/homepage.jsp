<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>V-Academy | Courses</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
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
	
<c:choose>

<c:when test="${mode=='MODE_BUY' }">
			<div class="container text-center">
				<h3>SHOPPING CART</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/buycourse">
					<c:if test="${not empty error }">
						<div class= "alert alert-danger">
							<c:out value="${error }"></c:out>
							</div>
					</c:if>
					<div class="form-group">
						<label class="control-label col-md-3">Course name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="coursename"
								value="${user.coursename }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Course Code</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="coursecode"
								value="${user.coursecode }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Add to Bill" />
					</div>
					</form>
					</div>
</c:when>
	
<c:when test="${mode=='MODE_COURSES' }">
			<div class="container" id="homediv">
				<div class="jumbotron text-center">
							<h1>Welcome to V-Academy</h1>
							<h3>The E-Learning APP</h3>
				</div>
			</div>

	<div class="container text-centered">
				<li><a href="kids">Kids</a></li>
				<li><a href="primary">Primary</a></li>
				<li><a href="secondary">Secondary</a></li>
				<li><a href="highersecondary">Higher Secondary</a></li>
				<li><a href="NEET">NEET</a></li>
				<li><a href="JEE">JEE Main</a></li>
				<li><a href="competitiveexams">Competitive Exams</a></li>
				<li><a href="GRE_IELTS_TOFEL">GRE/IELTS/TOFEL</a></li>
				</ul>
			</div>
	</div>

	</c:when>
	
	<c:when test="${mode=='RANK_BOARD' }">
			<div class="container text-center" id="tasksDiv">
				<h3>RANK BOARD</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>UserName</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Age</th>
								<th>Score</th>
								<th>Delete</th>
								<th>Edit</th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${users }">
								<tr>
									<td>${user.id}</td>
									<td>${user.username}</td>
									<td>${user.firstname}</td>
									<td>${user.lastname}</td>
									<td>${user.age}</td>
									<td><a href="/delete-user?id=${user.id }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-user?id=${user.id }"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
	</c:when>
<------------------------------------------------------------------------------------------------------------------------->


	<c:when test="${mode=='MODE_UPDATE' }">
			<div class="container text-center">
				<h3>Update User</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-user">
					<input type="hidden" name="id" value="${user.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${user.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">First Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="firstname"
								value="${user.firstname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Last Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="lastname"
								value="${user.lastname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Age </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="age"
								value="${user.age }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${user.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
	</c:when>	
	


	</c:choose>	
	
	
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>

</body>
</html>
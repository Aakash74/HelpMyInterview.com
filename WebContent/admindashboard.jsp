<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String ses = (String)session.getAttribute("username");
if(ses!=null){
%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Help My Interview Admin Dashboard</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="css/admin.css" rel="stylesheet">
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-danger ">
		<a class="navbar-brand "  href="index.jsp" style="color:white">HelpMyInterView.Com</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto" id="navId">
				<li class="nav-item active bg-danger"><a class="nav-link" href="LogoutController" style="color:white">Logout<span class="sr-only">(current)</span></a></li>
				<li class="nav-item active" style="float:left"><a class="nav-link"  style="color:white;float:right">Welcome, ${username}<span class="sr-only">(current)</span></a></li>
			</ul>
		</div>
	</nav>
	<div class="container-fluid">
	<div class=row>
		<div class="col-sm-12" >
		<h2 id="heading" > Welcome To Admin Dashboard</h2>
		</div>
	</div>
		<div class="card" style="padding:2rem;">
		<h3 id="heading1" style="text-decoration: underline">User Panel</h3>
<div class="row" style="padding-left:1rem;padding-right:1rem;">
  <div class="col-md-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Register New User</h5>
        <p class="card-text">You can add new user as admin or simple user type by providing some personal details like fullname,email etc..  </p>
        <a href="registeruseradmin.jsp" class="btn btn-primary">Register New User</a>
      </div>
    </div>
  </div>
  <div class="col-md-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Check All User</h5>
        <p class="card-text">You can easily check all existing user in database. You will see user's name ,email and mobile number. </p>
        <a href="UserDisplayAdminController" class="btn btn-primary">All User</a>
      </div>
    </div>
  </div>
  </div>
<div class="row" style="padding:1rem;">
  <div class="col-md-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Update Existing User</h5>
        <p class="card-text">You can update(password,uType) existing user or admin by searching particular user by its  Email Id.</p>
        <a href="updateuseradmin.jsp" class="btn btn-warning">Update User</a>
      </div>
    </div>
  </div>
   <div class="col-md-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Delete Existing User or Admin</h5>
        <p class="card-text">You can delete any existing user or admin by providing its email address and some basic details. </p>
        <a href="deleteuseradmin.jsp" class="btn btn-danger">Delete User</a>
      </div>
    </div>
  </div>
  </div>
</div>
<div class="card" style="padding:2rem;">
		<h3 id="heading1" style="text-decoration: underline">Group Discussion Question Panel</h3>
			<div class="row">
	<div class="col-md-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Post Question For Group Discussion </h5>
        <p class="card-text">You can post question to all user for group discussion.  </p>
        <a href="postgroupdisbyadmin.jsp" class="btn btn-primary">Post Question</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Get Previous Question</h5>
        <p class="card-text">You can check all the previous group discussion questions.</p>
        <a href="GetAllQuesGDController" class="btn btn-info">Get Questions</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Delete Question </h5>
        <p class="card-text">You can delete question previously posted group discussion questions by ID. </p>
        <a href="deletequestiongdadmin.jsp" class="btn btn-danger">Delete Questions</a>
    	  </div>
		</div>
	  </div>
  </div>
</div>
<div class="card" style="padding:2rem;">
		<h3 id="heading1" style="text-decoration: underline">Group Discussion Answer Panel</h3>
			<div class="row">
	<div class="col-md-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Get All Answer On Group Discussion </h5>
        <p class="card-text">You can get all answer present on group discussion and make sure when you post a new question please delete old discussion.  </p>
        <a href="DisplayDiscussionController" class="btn btn-primary">Get Discussion</a>
      </div>
    </div>
  </div>
  <div class="col-md-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Delete All Previous Discussion</h5>
        <p class="card-text">Always remember when you post new GD Ques before that delete all discussion present on that GD Topic.</p>
        <a href="deletediscussionbyadmin.jsp" class="btn btn-danger">Delete All Answer</a>
      </div>
    </div>
  </div>
  </div>
</div>
<div class="card" style="padding:2rem;">
		<h3 id="heading1" style="text-decoration: underline">Interview Experience Panel</h3>
<div class="row"  style="padding-top:2rem;">
	<div class="col-md-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Check All Experience</h5>
        <p class="card-text">You can check all user's experience which they share with us. </p>
        <a href="DisplayAllExpController" class="btn btn-primary">Get All Experience</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Update Experience</h5>
        <p class="card-text">You can update any existing experience by passing his email id.</p>
        <a href="findexpupdate.jsp" class="btn btn-info">Update Experience</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Delete Experience </h5>
        <p class="card-text">You can delete previously posted experience of any user by EmailId. </p>
        <a href="deleteexpadmin.jsp" class="btn btn-danger">Delete Experience</a>
    	  </div>
		</div>
	  </div>
  </div>
  </div>
<div class="card" style="padding:2rem;">
		<h3 id="heading1" style="text-decoration: underline">Query Panel</h3>
			<div class="row">
  <div class="col-md-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Get All Query</h5>
        <p class="card-text">You can get all the query which is asked in the form provided on the landing page of the website.  </p>
        <a href="DisplayQueryController" class="btn btn-primary">Get All</a>
      </div>
    </div>
  </div>
  <div class="col-md-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Delete Query</h5>
        <p class="card-text">You can delete any of the query just by passing user's email id.  </p>
        <a href="deletequery.jsp" class="btn btn-danger">Delete Query</a>
      </div>
    </div>
  </div>
  </div>
</div>
	</div>
</body>
</html>
<% } else{
	RequestDispatcher rd=null;
	rd = request.getRequestDispatcher("login.jsp");
	rd.forward(request, response);
	
}
%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin login page</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>


<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/js/materialize.min.js"></script>
<spring:url value="static/css/style.css" var="styleCss"/>
<link rel="stylesheet" type="text/css" href="${styleCss}">

</head>
<body>
	<nav>
	<div class="nav-wrapper blue darken-1">
		<a href="index" class="brand-logo center" style="margin-left: 30px;">{Code
			In Less}</a>
	</div>
	</nav>
	<div style="min-height: 563px; padding-top: 150px;">
		<div id="back" align="center" class="z-depth-2">
			<p
				style="font-size: 30px; color: #0572d2; padding-top: 20px; margin-bottom: 0;">ADMIN
				LOGIN</p>
			<form name="logondet" method="post" action="adminverify" class="row">
				<div class="input-field col s6">
					<input type="text" id="username" name="id" required> <label
						for="username">Username</label>
				</div>

				<div class="input-field col s6 ">
					<input type="password" id="pass" name="pass" required> <label
						for="pass">Password</label>
				</div>

				<button type="submit" class="waves-effect waves-light btn blue">Submit</button>

			</form>
		</div>
	</div>
</body>
<style>
h1 {
	padding-top: 25px;
	font-size: 30px;
}

#back {
	width: 600px;
	margin: 0px auto 0px auto;
	background: rgba(255, 255, 255, .5);
	padding: 0 50px;
}

input {
	width: 400px;
}

button {
	margin: 10px 0px 20px 0px;
}
</style>
</html>
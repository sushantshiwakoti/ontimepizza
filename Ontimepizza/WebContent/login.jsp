<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.ontimepizza.common.dto.ErrorDto"%>
<%@ include file="common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet" href="css/login.css" type="text/css">
<link href="css/bootstrap.min.css" type="text/css">

</head>
<body>
	<%
		ErrorDto errorDto = (ErrorDto) request.getAttribute("errorDto");
		String responsemsg = (String) request.getAttribute("responsemsg");
		ErrorDto dbError = (ErrorDto) getServletContext().getAttribute("dbError");
		if (dbError != null && dbError.isHasError()) {
			errorFile = dbError.getFileName();
			errorDesc = dbError.getErrorDesc();
	%>
	<%@include file="error.jsp"%>
	<%
		errorDto = null;
		}
	%>
	<%
		if (errorDto != null && errorDto.isHasError()) {
			errorFile = errorDto.getFileName();
			errorDesc = errorDto.getErrorDesc();
		}
	%>

<body id="LoginForm">
	<div class="container">
		<div class="login-form">
			<div class="main-div">
				<div class="panel">
					<h2>OnTimePizza</h2>
					<p>Please enter your UserName and password</p>
				</div>
				<% if(responsemsg!=null){ %>
				<p class="danger">Invalid UserName or Password</p>
				<%} %>
				<form id="Login" method="post" action="admin-dashboard">

					<div class="form-group">


						<input type="text" class="form-control" id="inputEmail"
							placeholder="UserName" name="username" required>

					</div>

					<div class="form-group">

						<input type="password" class="form-control" id="inputPassword"
							placeholder="Password" name="password" required>

					</div>
					<button type="submit" class="btn btn-primary">Login</button>

				</form>
			</div>
		</div>
	</div>
<script src="js/bootstrap.min.js"></script>
</body>


</html>
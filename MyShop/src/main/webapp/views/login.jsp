<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<link href="<%=request.getContextPath()%>/resources/css/style.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
</head>

<body>
	<div class="box">
		<h1>Sign In</h1>
		<form name='loginForm' id="loginForm"
			action="< c:url value='j_spring_security_login' />" method="POST">
			<b class="error">${error}</b>
			<div class="input_container">
				<input type="text" name="username" placeholder="Username or email">
			</div>
			<div class="input_container">
				<input name="password" type="password" placeholder="Password">
			</div>
			<div class="input_container">
				<input type="checkbox" name="remember-me" /> Remember me
			</div>
			<input type="submit" value="Sign IN" />
		</form>
		<p>Or login with</p>
		<div>
			<a href="#"><img
				src="<%=request.getContextPath()%>/resources/image/icon/google.jpg"
				alt=""></a> <a href="#"><img
				src="<%=request.getContextPath()%>/resources/image/icon/facebook-icon-preview-1-400x400.png"
				alt=""></a>
		</div>
		<a href="<%=request.getContextPath()%>/register" id="signup">Sign
			Up</a> <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</div>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/loginValidate.js"></script>
</body>

</html>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<link href="<%=request.getContextPath()%>/resources/css/style.css"
	rel="stylesheet" />
</head>
<body>
	<div class="box">
		<h1>Register</h1>
		<div class="input_container">
			<input type="text" placeholder="Enter email">
		</div>

		<div class="input_container">
			<input type="text" placeholder="Username">
		</div>
		<div class="input_container">
			<input type="password" placeholder="Password">
		</div>
		<div class="input_container">
			<input type="password" placeholder="Repassword">
		</div>
		<div class="input_container">
			<input type="submit" value="Register" />
		</div>
		<a href="<%=request.getContextPath()%>/login" id="signup">Login</a>

	</div>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
</body>
</html>
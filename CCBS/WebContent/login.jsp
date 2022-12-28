<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Login Page</title>
	<link rel="stylesheet" type="text/css" href="css/Login.css">
</head>
<body>


	<div id="center" >
		<div class="login_header">
			<label>Login </label>
		</div>
		<form method="POST" action="LoginController">
			<div class="username_input">
				<input type="text" name="username" id="username" required><br>
				<span></span>
				<label>Username</label>
			</div>
			<div class="password_input">
				<input type="password" name="password" id="password" required><br>
				<span></span>
				<label>Password</label>
			</div>
			<div class="forgot_password">
				<a href="forgotpassword.jsp">Forgot your password?</a>
			</div>
			
			<input type="submit" value="Login">
			<br><br>
			
			<!-- <p>
			<label>User Name</label>
			<input type="text" name="username" required><br>
			</p>
			<p>
			<label>Password</label>
			<input type="password" name="password" required><br>
			</p> -->
			
		</form>
	</div>
	
</body>
</html>
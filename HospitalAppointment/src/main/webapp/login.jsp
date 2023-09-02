<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

.header {
	background-color: #333;
	color: #fff;
	text-align: center;
	padding: 10px;
	position: relative;
}

.container {
	display: flex;
	justify-content: center;
	align-items: center;
}

.product {
	width: 50%;
	padding: 20px;
	border: 1px solid #ccc;
	text-align: center;
	background-color: #fff;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.product h1 {
	font-size: 24px;
	margin-bottom: 20px;
}

.product label {
	display: block;
	margin-bottom: 10px;
}

.product input[type="text"],
.product input[type="password"] {
	width: 60%;
	padding: 10px;
	margin-bottom: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.product button {
	width: 40%;
	padding: 10px;
	background-color: #333;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.product button:hover {
	background-color: #555;
}
</style>
</head>
<body>
	<form action="login">
		<div class="header">
			<h1>MSB Hospital</h1>
		</div>
		<br><br>
		<div class="container">
			<div class="product">
				<h1>Login</h1>
				<label for="user"><b>Email:</b></label>
				<input type="text" placeholder="Enter email" name="email" required> <br>
				<label for="psw"><b>Password:</b></label>
				<input type="password" placeholder="Enter Password" name="password" required> <br>
				<button type="submit" class="btn">Login</button>
			</div>
		</div>
	</form>
</body>
</html>

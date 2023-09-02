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
	font-weight: bold; /* Add bold font-weight to label text */
}

.product input[type="text"], .product input[type="password"] {
	width: 60%; /* Adjust the width as needed */
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
		<div class="header">
			<h1>MSB Hospital</h1>
		</div>
		<br>
		<br>
		<div class="container">
			<div class="product">
				<form action="register" method="get">
					<label for="fname"><b>First Name:</b></label>
					<input type="text" name="fname"><br>
					<label for="lname"><b>Last Name:</b></label>
					<input type="text" name="lname"><br>
					<label for="email"><b>Email:</b></label>
					<input type="text" name="email"><br>
					<label for="phonenumber"><b>Phone Number:</b></label>
					<input type="text" name="phonenumber"><br>
					<label for="password"><b>Enter Password:</b></label>
					<input type="text" name="password"><br>
					<button type="submit" class="btn">Register</button>
				</form>
			</div>
		</div>
</body>
</html>

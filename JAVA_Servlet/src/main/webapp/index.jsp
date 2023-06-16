<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link crossorigin="anonymous"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	rel="stylesheet">
<script crossorigin="anonymous"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
	
</head>
<body>
	<h1>Welcome to Customer Management System</h1>
	<form action="CLNTPFController" method="post">
		<input type="hidden" name="action" value="create"> <input
			type="submit" value="Create Customer">
	</form>
	<form action="CLNTPFController" method="post">
		<input type="hidden" name="action" value="inquiry"> <input
			type="submit" value="Inquiry">
	</form>
</body>
</html>
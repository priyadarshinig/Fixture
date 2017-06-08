<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shipping Address</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="GeneralHeader.jsp"></jsp:include>
<div class="container">
<div class="panel panel-default">
<div class="panel panel-heading">
<b>SHIPPING ADDRESS</b>
</div>
<div class="panel panel-content">
<h4><b>Enter your Shipping Address</b></h4>
<form:form action="/addAddress" commandName="address" method="GET">
<label><b>Address Line 1:</b></label><input type="text" name="line1" class="form control"><br>
<label>Address Line 2:</label><input type="text" name="line2" class="form control"><br>
<label>   City                               :</label><input type="text" name="city" class="form control"><br>
<label>Pincode                        :</label><input type="text" name="pincode"class="form control"><br>
<!-- <a href="confirmdet"><input type="button" class="btn-btn default" value="Next" /></a> -->
<a class = "btn btn-danger" href="Checkout">Submit</a>
</form:form>
</div>
</div>
</div>
</body>
</html>
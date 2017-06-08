<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Method</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
	.button3 {
    background-color: white; 
    color: black; 
    border: 2px solid #f44336;
}
	</style>
<body>
<jsp:include page="GeneralHeader.jsp"></jsp:include>
<div class="container">
<div class="panel panel-default">
<div class="panel panel-heading">
<h4><b>PAYMENT</b></h4>
</div>
<div class="panel panel-content">
<b>Select the payment method</b><br/>
<form>
<input type="radio" name="payment" value="Cash on delivery" checked>Cash on deliver<img src="resources/cash-on-delivery.jpg"><br>
<input type="radio" name="payment" value="Net Banking">Net Banking<img src="resources/untitled.png"><br>
<input type="radio" name="payment" value="Debit/Credit/ATM Card">Debit/Credit/ATM Card<img src="resources/Micro-ATM.png"><br>
</form> 
<!-- <button id="next" name="_eventId_next">Next</button> -->
<center><a href="ShippingAddress"><input type="button" class="button button3" value="Next" /></a></center>
<!-- <input type="submit" name="_eventId_submit" value="Submit"> -->
</div>
</div>
</div>
</body>
</html>
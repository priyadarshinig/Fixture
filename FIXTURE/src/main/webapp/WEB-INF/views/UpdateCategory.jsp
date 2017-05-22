<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet"
		href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<%@include file="index.jsp"%>

	<div class="container">
		<div class="row">
		<div class="col-sm-4">
				<div class="product-form">
					<!--sign up form-->
					<h2>Category Form</h2>
					<br>
					<form:form action=Category/category commandName="category"
						method="post">
						Category Name<form:input path="catname" placeholder="categoryname" required="" />
						<br><br>
						Category Desc<form:input path="catdesc" placeholder="description" required="" />
						<br>
						<br>
						
						<button type="submit" class="btn btn-default">Submit</button>
					</form:form>
					</div>
					</div>
					</div>
					</div>
					</body></html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Supplier Page</title>
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
<style>
body {
	background-image: url("resources/network.jpg");
	width: 100vw;
	height: 100vh;
	background-size: 100% 100%;
	background-repeat: no-repeat;
	position: relative;
}
</style>
<body>
	<%@include file="index.jsp"%>
	

	<div class="container">
		<div class="row">
		<div class="col-sm-4">
				<div class="supplier-form">
					<!--sign up form-->
					<h2>Update Supplier Form</h2>
					<br>
					<form:form action="${pageContext.request.contextPath}/UpdateSupplier" commandName="supplier">
							<table align="right">
							<tr>
								<td colspan="2"><center>Supplier Details</center></td>
							</tr>

							<tr>
								<td>SupplierID</td>
								<td><form:input path="sid" /></td>
							</tr>
							<tr>
								<td>Supplier Name</td>
								<td><form:input path="sname" /></td>
							</tr>
							<tr>
								<td>Supplier Address</td>
								<td><form:textarea path="sadd" cols="21" rows="5"></form:textarea></td>
							</tr>

							<tr>
								<td colspan="2"><center>
										<input type="submit" value="Update" />
									</center></td>
							</tr>

						</table>
					</form:form>
					<table cellspacing="2" cellpadding="2" border="5" align="center">

						<tr bgcolor="#D3D3D3">
							<td><b>Supplier ID</b></td>
							<td><b>Supplier Name</b></td>
							<td><b>Supplier Address</b></td>
							<td><b>Operation</b></td>
						</tr>

						<c:forEach items="${slist}" var="sup">
							<tr bgcolor="white">
								<td>${sup.sid}</td>
								<td>${sup.sname}</td>
								<td>${sup.sadd}</td>
								<td><a href="<c:url value="deleteSupplier/${sup.sid}"/>">Delete</a>
									<a href="<c:url value="updateSupplier/${sup.sid}"/>">Update</a>
								</td>
							</tr>
						</c:forEach>


					</table>

				</div>
				<!--/supplier form-->
			</div>
		</div>
	</div>
</body>
</html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@page isELIgnored="false"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Product Page-Fixture</title>
</head>
<style>
body {
	background-image: url("resources/crow.jpg");
	width: 100vw;
	height: 100vh;
	background-size: 100% 100%;
	background-repeat: no-repeat;
	position: relative;
}
</style>
<body>
	<%@include file="GeneralHeader.jsp"%>

	<form:form action="InsertProduct" modelAttribute="product" enctype="multipart/form-data">
		<table align="center">
			<tr>
				<td colspan="2"><center><b>PRODUCT DETAILS</b></center></td>
			</tr>
			<!-- <tr>
				<td>Product ID</td>
				<td><input type="text" name="prodid" /></td>
			</tr> -->
			<tr>
				<td><b>Product Name</b></td>
				<td><input type="text" name="prodname" /></td>
			</tr>
			<tr>
				<td><b>Category</b></td>
				<td><form:select path="catid">
						<form:option value="0" label="------Select----" />
						<form:options items="${catlist}" />
					</form:select>
				</td>
			</tr>
			<tr>
				<td><b>Supplier</b></td>
				<td><form:select path="sid">
						<form:option value="0" label="------Select----" />
						<form:options items="${suplist}" />
					</form:select>
				</td>
			</tr>
				<td><b>Price</b></td>
				<td><input type="text" name="prodprice" /></td>
			</tr>
			<tr>
				<td><b>Stock</b></td>
				<td><input type="text" name="stock" /></td>
			</tr>
			<tr>
				<td><b>Product Desc</b></td>
				<td><form:textarea path="proddesc" /></td>
			</tr>
			<tr>
				<td><b>Product Image</b></td>
				<td><form:input type="file" path="pimage" /></td>
			</tr> 
			<tr>
				<td colspan="2"><center>
						<input type="submit" />
					</center></td>
			</tr>

		</table>
	</form:form>

	<table align="center" border="5" cellspacing="2" cellpadding="2">
		<tr bgcolor="#D3D3D3" >
			<td><b>Product ID</b></td>
			<td><b>Product Name</b></td>
			<td><b>Category ID</b></td>
			<td><b>Supplier ID</b></td>
			<td><b>Price</b></td>
			<td><b>Stock</b></td>
			<td><b>Operation</b></td>
		</tr>

		<c:forEach items="${proddet}" var="prod">
			<tr bgcolor="white">
				<td>${prod.prodid}</td>
				<td>${prod.prodname}</td>
				<td>${prod.catid}</td>
				<td>${prod.sid}</td>
				<td>${prod.prodprice}</td>
				<td>${prod.stock}</td>
				<td><a href="<c:url value="deleteProduct/${prod.prodid}"/>"><span class="glyphicon glyphicon-trash">Delete</span></a>
					<a href="<c:url value="updateProduct/${prod.prodid}"/>"><span class="glyphicon glyphicon-edit">Update</span></a>
				</td>
			</tr>
		</c:forEach>

	</table>


</body>
</html>
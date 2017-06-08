<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Product Page-Fixture</title>
</head>
<body>

	<form:form action="${pageContext.request.contextPath}/UpdateProduct" modelAttribute="product">
		<table align="center">
			<tr>
				<td colspan="2"><b>UPDATE PRODUCT DETAILS</b></td>
			</tr>
			<tr>
				<td><b>Product ID</b></td>
				<td><form:input path="prodid" /></td>
			</tr>
			<tr>
				<td><b>Product Name</b></td>
				<td><form:input path="prodname" /></td>
			</tr>
			<tr>
				<td><b>Category</b></td>
				<td><form:input path="catid" /></td>
			</tr>
			<tr>
				<td><b>Supplier</b></td>
				<td><form:input path="sid" /></td>
			</tr>
			<tr>
				<td><b>Price</b></td>
				<td><form:input path="prodprice" /></td>
			</tr>
			<tr>
				<td><b>Stock</b></td>
				<td><form:input path="stock" /></td>
			</tr>
			<tr>
				<td><b>Product Desc</b></td>
				<td><form:textarea path="proddesc" /></td>
			</tr>
			<tr>
				<td colspan="2"><center><input type="submit" value="Update" /></center></td>
			</tr>

		</table>
	</form:form>
	
	<table align="center">
		<tr bgcolor="#D3D3D3"> 
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
			<td>
			<a href="<c:url value="deleteProduct/${prod.prodid}"/>">Delete</a>
			<a href="<c:url value="updateProduct/${prod.prodid}"/>">Update</a>
			</td>
		</tr>
		</c:forEach>
	
	</table>


</body>
</html>
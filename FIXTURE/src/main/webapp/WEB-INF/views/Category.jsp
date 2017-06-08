<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<style>
body {
	background-image: url("resources/tree.jpg");
	width: 100vw;
	height: 100vh;
	background-size: 100% 100%;
	background-repeat: no-repeat;
	position: relative;
}
</style>
<body>
	<%@include file="GeneralHeader.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="category-form">
					<!--sign up form-->
					<h2><center>CATEGORY FORM</center></h2>
					<br>
					<form:form action="CategoryAddition" commandName="category"
						method="GET">
						<table align="right">
							
							<tr>
								<td><b>CategoryID</b></td>
								<td><input type="text" name="catid" /></td>
							</tr>
							<tr>
								<td><b>Category Name</b></td>
								<td><input type="text" name="catname" /></td>
							</tr>
							<tr>
								<td><b>Category Desc</b></td>
								<td><textarea name="catdesc" cols="21" rows="5"></textarea></td>
							</tr>

							<tr>
								<td colspan="2"><center>
										<input type="submit" value="SUBMIT" />
									</center></td>
							</tr>

						</table>
					</form:form>
					<table cellspacing="10" cellpadding="10"  border="5" align="right">

						<tr bgcolor="#D3D3D3" >
							<td><b>Category ID</b></td>
							<td><b>Category Name</b></td>
							<td><b>Description</b></td>
							<td><b>Operation</b></td>
						</tr>

						<c:forEach items="${catlist}" var="cat">
							<tr>
								<td >${cat.catid}</td>
								<td>${cat.catname}</td>
								<td>${cat.catdesc}</td>
								<td>
									<a href="<c:url value="deleteCategory/${cat.catid}"/>"><span class="glyphicon glyphicon-trash">Delete</span></a>
									<a href="<c:url value="updateCategory/${cat.catid}"/>"><span class="glyphicon glyphicon-edit">Update</span></a>
								</td>
							</tr>
						</c:forEach>


					</table>


				</div>
				<!--/category form-->
			</div>
		</div>
	</div>
</body>
</html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false"%>
<%@include file="index.jsp"%>

<html>
<head>

<style>
body {
	background: url(//subtlepatterns.com/patterns/scribble_light.png);
	background-size: 100%;
	class: "w3-opacity";
}
</style>
</head>
<body>
	<!-- Text input-->
	<div class="form-group">
		<br>
		<form:form action="Register/user" commandName="user" method="POST">
			<form:input path="custName" placeholder="Name" required="" />
			<br>
			<br>
			<span class="error"></span>

			<form:input path="custMail" placeholder="Email" required="" />
			<br>
			<br>
			<span class="error"></span>

			<form:input path="custPwd" placeholder="Password" type="password"
				required="" />
			<br>
			<br>
			<span class="error"></span>

			<form:input path="custPhone" placeholder="Phone" required="" />
			<br>
			<br>
			<span class="error"></span>

			<form:select path="role">
				<form:option value="USER">User</form:option>
				<form:option value="SUPPLIER">Supplier</form:option>
			</form:select>
			<button type="submit" class="btn btn-default">Submit</button>
		</form:form>
	</div>
</body>
</html>
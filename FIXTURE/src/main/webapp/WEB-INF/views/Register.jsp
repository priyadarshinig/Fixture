<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false"%>
<%@include file="GeneralHeader.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
/*
/* Created by Filipe Pina
 * Specific styles of signin, register, component
 */
/*
 * General styles
 */
body, html {
	height: 100%;
	background-repeat: no-repeat;
	background-color: #d3d3d3;
	font-family: 'Oxygen', sans-serif;
}
.main {
	margin-top: 70px;
}

h1.title {
	font-size: 50px;
	font-family: 'Passion One', cursive;
	font-weight: 400;
}

hr {
	width: 10%;
	color: #fff;
}

.form-group {
	margin-bottom: 15px;
}

label {
	margin-bottom: 15px;
}

input, input::-webkit-input-placeholder {
	font-size: 11px;
	padding-top: 3px;
}

.main-login {
	background-color: #fff;
	/* shadows and rounded borders */
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.main-center {
	margin-top: 30px;
	margin: 0 auto;
	max-width: 330px;
	padding: 40px 40px;
}

.login-button {
	margin-top: 5px;
}

.login-register {
	font-size: 11px;
	text-align: center;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row main">
			<div class="panel-heading">
				<div class="panel-title text-center">
					<h1 class="title">REGISTER</h1>
					<hr />

				</div>

			</div>

			<div class="main-login main-center">

				<form:form action="Register/user" class="form-horizontal"
					commandName="user" method="POST">
					<div class="form-group">

						<label for="name" class="cols-sm-2 control-label">Your
							Name</label>

						<div class="cols-sm-10">

							<div class="input-group">

								<span class="input-group-addon"><i class="fa fa-user fa"
									aria-hidden="true"></i></span>

								<form:input path="custName" placeholder="Name" required=""
									class="form-control" />

							</div>

						</div>

					</div>


					<div class="form-group">

						<label for="email" class="cols-sm-2 control-label">Your
							Email</label>

						<div class="cols-sm-10">

							<div class="input-group">

								<span class="input-group-addon"><i
									class="fa fa-envelope fa" aria-hidden="true"></i></span>

								<form:input path="custMail" placeholder="Email" required=""
									class="form-control" />

							</div>

						</div>

					</div>



					<div class="form-group">

						<label for="password" class="cols-sm-2 control-label">Password</label>

						<div class="cols-sm-10">

							<div class="input-group">

								<span class="input-group-addon"><i
									class="fa fa-lock fa-lg" aria-hidden="true"></i></span>

								<form:input path="custPwd" placeholder="Password"
									type="password" required="" class="form-control" />

							</div>

						</div>

					</div>


					<div class="form-group">

						<label for="phone" class="cols-sm-2 control-label">phone
							number</label>

						<div class="cols-sm-10">

							<div class="input-group">

								<span class="input-group-addon"><i
									class="fa fa-lock fa-lg" aria-hidden="true"></i></span>

								<form:input path="custPhone" placeholder="Phone" required=""
									class="form-control" />

							</div>

						</div>

					</div>


					<form:select path="role">
						<form:option value="USER_ROLE">User</form:option>
					</form:select>
					<div class="form-group ">

						
<button type="submit" class="btn btn-default btn-primary btn-lg btn-block login-button">Submit</button>
					</div>


				</form:form>
			</div>

		</div>

	</div>


	<script type="text/javascript" src="assets/js/bootstrap.js"></script>
</body>

</html>
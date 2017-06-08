<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">FIXTURE</a>
			</div>

			<c:if test="${!sessionScope.LoggedIn}">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="Login">Login</a></li>
					<li><a href="Register">Register</a></li>
				 <li><a href="Aboutus">AboutUs</a></li> 
				</ul>
			</c:if>

			<c:if test="${sessionScope.LoggedIn}">

				<c:if test="${sessionScope.role=='USER_ROLE'}">
					<ul class="nav navbar-nav">
						<li class="active"><a href="UserHome">Home</a></li>
 						<li><a href="Productlist">Products</a></li>	
					<li><a href="Cart"><span class="glyphicon glyphicon-shopping-cart">Cart</span></a></li>
<!-- <!-- 						<li><a href="MyOrders">My Orders</a></li>
 -->    						<li><a href="logout">Logout</a></li>
					</ul>
				</c:if>

				<c:if test="${sessionScope.role=='USER_ADMIN'}">
					<ul class="nav navbar-nav">
						<li class="active"><a href="AdminHome">Home</a></li>
						<li><a href="Product">Manage Product</a></li>
						<li><a href="Category">Manage Category</a></li>
						<li><a href="Supplier">Manage Supplier</a></li>
						 <li><a href="logout">Logout</a></li>
						
					</ul>
				</c:if>

			</c:if>


		</div>
	</nav>

</body>
</html>
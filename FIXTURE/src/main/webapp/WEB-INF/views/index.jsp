<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
  <link rel="shortcut icon" type="image/x-icon" href="icon.png" />
 <title>Fixture</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
</head>


<style>
 .navbar {
      margin-bottom: 0;
      background-color: #00000;
      z-index: 9999;
      border: 0;
      font-size: 12px !important;
      line-height: 1.42857143 !important;
      letter-spacing: 4px;
      border-radius: 0;
      font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
      color: #0000FF !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
      color: #0000FF !important;
      background-color: #00000 !important;
  }
  .navbar-default .navbar-toggle {
      
      color: #00000 !important;
  }
   .dropdown-toggle {
      color: #00000;
      background-color:black #00000!important;
  }
  .dropdown-menu li a {
      color: #00000 !important;
      
  }
  .dropdown-menu li a:hover {
      background-color: black !important;
     
  }</style>
<body>  
<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row"><div align="center">
<img src="resources/fixtureicon.png" alt="img">
</div>
</div></div></div></header>
				
<nav class="navbar navbar-inverse">
					
  <div class="container-fluid">
    <div class="navbar-header" >
   
    <ul class="nav navbar-nav">
    <li class="active"><a href="Home"><span class="glyphicon glyphicon-home"></span> Home</a></li>
      <li><a href="Register"><span class="glyphicon glyphicon-user"></span> Register</a></li>
     <li><a href="Category">Category</a></li>
          <li><a href="Supplier">Supplier</a></li>
     
     <li><a href="Product">Product</a></li>
     <!-- <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="Product">Product
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Productlist">Bed</a></li>
          <li><a href="Product1">Sofa</a></li>
          <li><a href="#">Wardrobe</a></li>
         <li><a href="#">Kitchen</a></li>
         <li><a href="#">Study</a></li>
        </ul>
      </li> --> 
      
    </ul></div>
    <form class="navbar-form navbar-right">
  <div class="input-group">
    <input type="text" class="form-control" placeholder="Search">
    <div class="input-group-btn">
      <button class="btn btn-default" type="submit">
        <i class="glyphicon glyphicon-search"></i>
      </button>
    </div>
  </div>
</form>
    
    
    <ul class="nav navbar-nav navbar-right">
     <li><a href="Login1"  > <span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        <li><a class="btn" data-toggle="modal" data-target=".bs-example-modal-sm"><span class="glyphicon glyphicon-log-out"></span>Logout</a>
        <div class="modal bs-example-modal-sm" role="dialog">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header"><h4>Logout <i class="fa fa-lock"></i></h4></div>
      <div class="modal-body"><i class="fa fa-question-circle"></i> Are you sure you want to logout?</div>
      <div class="modal-footer"><a href="Home" class="btn btn-primary btn-block">Logout</a></div>
    </div>
  </div>
</div></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
</div>
</nav>

</body>
</html>
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

<body>
<div class="">
<img src="resources/FIXTURE NEW.png" alt="img">
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    </div>
    <ul class="nav navbar-nav">
    <li class="active"><a href="Home"><span class="glyphicon glyphicon-home"></span> Home</a></li>
      <li><a href="Register"><span class="glyphicon glyphicon-user"></span> Register</a></li>
      <li><a href="Product"><span class="glyphicon glyphicon-bed"></span> Products</a></li>
    </ul>
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

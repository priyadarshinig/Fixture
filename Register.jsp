<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="index.jsp"%>
   <head>
   <link rel="shortcut icon" type="image/x-icon" href="icon.png" />
   <style>
body{
    background: url("resources/background image2.jpg") no-repeat;
     background-size: 100%;
      class:"w3-opacity";
}

</style>
</head>
<form class="form-horizontal">
<fieldset>

<!-- Text input-->
<div class="form-group">
  <label class="col-xs-4 control-label" for="fn">First name</label>  
  <div class="col-xs-4">
  <input id="fn" name="fn" type="text" placeholder="first name" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-xs-4 control-label" for="ln">Last name</label>  
  <div class="col-xs-4">
  <input id="ln" name="ln" type="text" placeholder="last name" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-xs-4 control-label" for="cmpny">Company</label>  
  <div class="col-xs-4">
  <input id="cmpny" name="cmpny" type="text" placeholder="company" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-xs-4 control-label" for="email">Email</label>  
  <div class="col-xs-4">
  <input id="email" name="email" type="text" placeholder="email" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-xs-4 control-label" for="add1">Address 1</label>  
  <div class="col-xs-4">
  <input id="add1" name="add1" type="text" placeholder="" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-xs-4 control-label" for="add2">Address 2</label>  
  <div class="col-xs-4">
  <input id="add2" name="add2" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-xs-4 control-label" for="city">City</label>  
  <div class="col-xs-4">
  <input id="city" name="city" type="text" placeholder="city" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-xs-4 control-label" for="zip">Zip Code</label>  
  <div class="col-xs-4">
  <input id="zip" name="zip" type="text" placeholder="Zip Code" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-xs-4 control-label" for="ctry">Country</label>  
  <div class="col-xs-4">
  <input id="ctry" name="ctry" type="text" placeholder="Country" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-xs-4 control-label" for="phone">Phone no</label>  
  <div class="col-xs-4">
  <input id="phone" name="phone" type="text" placeholder="Phone#" class="form-control input-md" required="">
    
  </div>
</div>
<!-- Button -->
<div class="form-group">
  <label class="col-xs-4 control-label" for="submit"></label>
  <div class="col-xs-4">
    <button id="submit" name="submit" class="btn btn-primary">SUBMIT</button>
  </div>
</div>

</fieldset>
</form>
    
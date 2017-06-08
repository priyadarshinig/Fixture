
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/ProductList.css">
<script src="resources/js/jquery.js"></script>
<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/custom.modernizr.js"></script>
<title>ProductList</title>
<script type="text/javascript">
	$(document).ready(function() {
		var $container = $('.item-container')
		$container.isotope({
			itemSelector : '.item',
			layoutMode : 'fitRows'
		}).isotopeSearchFilter();
	})
</script>
</head>
<body>
	<jsp:include page="GeneralHeader.jsp"></jsp:include>
	<div class="container">
	<h2><center>Product List</center></h2>
		
	<div class="item-container">
<c:forEach items="${proddet}" var="prdt">
			<div class="item">
				<div class="col-md-12">
					<span class="thumbnail"> 
					<img src="<c:url value="/resources/images/${prdt.prodid}.jpg" />"/>
						<h4><b>${prdt.prodname}</b></h4>
						<p>${prdt.proddesc}</p>
						<b>Price:</b><p class="price">${prdt.prodprice}</p>
						<hr class="line">
						<div class="row">
							<div class="col-md-6 col-sm-4">
							<div class="wrapper">
							<a href = "ProductDesc/${prdt.prodid}"><button class="btn btn-danger"><span class="glyphicon glyphicon-shopping-cart">ADD TO CART</span></button></a>
							</div>
							</div>
						</div>
					</span>
				</div>
			</div>
		</c:forEach>
	</div>
	<script src="resources/js/isotope.pkgd.js"></script>
	<script src="resources/js/isotopeSearchFilter.jquery.js"></script>
</body>
</html>
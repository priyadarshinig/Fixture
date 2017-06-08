<%@ page language="java" contentType="text/html"%>
<div class="container">
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<style>
	.button3 {
    background-color: white; 
    color: black; 
    border: 2px solid #f44336;
}
	</style>
<c:set var="rootContext" value="${pageContext.request.contextPath}"/>
<table cellspacing="5" width="80%" align="center">
<tr>	
	<td colspan="3"><center><h3><b>SHOPPING CART</b></h3></center></td>
</tr>
<tr bgcolor="#D3D3D3">
	<td><b>Product ID</b></td>
	<td><b>Quantity</b></td>
	<td><b>SubTotal</b></td>
	<td><b>Image</b></td>
	<td><b>Operation</b></td>
</tr>
<c:forEach items="${cartitems}" var="cartitem">
	<form action="<c:url value="/updateCartItem/${cartitem.id}"/>" method="get">
	<tr>	
		<td>${cartitem.prodid}</td>
		<td><input type="text" name="qty" value="${cartitem.quantity}"/></td>
		<td>${cartitem.subtotal}</td>
		<td><img src="<c:url value='/resources/images/${cartitem.prodid}.jpg'/>" width="100" height="100" /></td>
		<td>
		<span class="glyphicon glyphicon-trash"><a href="<c:url value="/deleteCartItem/${cartitem.id}"/>"><input type="button" value="DELETE" class="btn btn-xs btn-success btn-block"/></a></span>
			<span class="glyphicon glyphicon-edit"><input type="submit" value="UPDATE" class="btn btn-xs btn-success btn-block"/></span>
		</td>
	</tr>
	</form>
</c:forEach>
	<tr>
		<td colspan="2"><center><a href="<c:url value='/UserHome/'/>"><input type="submit" value="CONTINUE SHOPPING" class="button button3"/></a></center>
		<td colspan="3"><center> <a href="${rootContext}/checkout"><input type="submit" value="CHECKOUT" class="button button3"/></center>
</a>
	</tr>
</table>

</div>
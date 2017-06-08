<%@ page language="java" contentType="text/html"%>
<%@include file="GeneralHeader.jsp" %>

<div class="container">
<table width="80%" align="center"  >
<tr bgcolor="#D3D3D3" >
	<td colspan="3"><center><b>PRODUCT DESCRIPTION</b></center></td>
</tr>
<tr>
	<td rowspan="6"><img src="<c:url value="/resources/images/${prodinfo.prodid}.jpg" />"/></td>
</tr>
<tr>
	<td> <b>Product ID:</b> </td>   <td>${prodinfo.prodid}</td>
</tr>
<tr>
	<td><b>Product Name:</b> </td>   <td>${prodinfo.prodname}</td>
</tr>
<tr>
	<td><b>Supplier:</b></td>       <td>${prodinfo.sid}</td>
</tr>
<tr>
	<td><b> Product Desc: </b></td>  <td>${prodinfo.proddesc}</td>
</tr>
<tr>
	<td><b> Price:</b></td>     <td>${prodinfo.prodprice}</td>
</tr>

<tr>
	<td></td>
	<td colspan="2">
		<form action="<c:url value="/addToCart/${prodinfo.prodid}"/>" method="get">
			<b>Quantity:</b> <input type="text" name="quantity" class="form-control  btn-block  "/>
			<input type="submit" value="AddToCart" class="btn btn-xs btn-danger btn-block"/>
		</form>
	</td>
</tr>
</table>
</div>
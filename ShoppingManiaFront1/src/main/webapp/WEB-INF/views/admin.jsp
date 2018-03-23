<%@include file="header.jsp"%>
<div class="container" style=" width:100%; repeat:no-repeat; background-image:url('resources/images/background1.jpg'); "><br/>
	<table class="table table-bordered text-center">
		<tr>
			<td colspan="2"><h2><b>Admin Home</b></h2></td>
		</tr>
		<tr>
			<td><a href="${e}addCategory" class=" btn  btn-info" style="font-size: 20px">AddCategory</a></td>
			<td><a href="${e}viewCategory" class=" btn  btn-info" style="font-size: 20px">ViewCategory</a></td>
		</tr>
		<tr>
			<td><a href="${e}addSupplier" class=" btn  btn-info" style="font-size: 20px">AddSupplier</a></td>
			<td><a href="${e}viewSupplier" class=" btn  btn-info" style="font-size: 20px">View Supplier</a></td>
		</tr>
		<tr>
			<td><a href="${e}addProduct" class=" btn  btn-info" style="font-size: 20px">AddProduct</a></td>
			<td><a href="${e}viewProduct" class=" btn  btn-info" style="font-size: 20px">ViewProduct</a></td>
		</tr>
	</table>

</div>
<%@include file="footer.jsp"%>
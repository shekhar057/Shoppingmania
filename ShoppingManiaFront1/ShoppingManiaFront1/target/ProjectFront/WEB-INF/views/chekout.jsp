
<%@include file="header.jsp"%>

<div class="container-fliud"
	style="background: url('resources/images/register.png');">
	<form class="form-horizontal" action="${e}placeOrder" method="post"
		style="margin-top: 0%; margin-bottom: 0%;">
		<h1 style="text-align: center;  color: black;">
			<b> Shipping Details</b>
		</h1>
		<div class="form-group">
			<label class="control-label col-sm-2" for="name">Name:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="name"
					placeholder="Enter username" name="name">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="hno">House No:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="hno"
					placeholder="Enter username" name="hno">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="city">City:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="city"
					placeholder="Enter username" name="city">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="state">State:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="state"
					placeholder="Enter username" name="state">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="pincode">Pincode:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="pincode"
					placeholder="Enter username" name="pincode">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="mobile">Mobile:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="mobile"
					placeholder="Enter username" name="mobile">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="paymode">Payment Mode:</label>
			<div class="col-sm-10">
				<input type="radio" class="form-control" value="COD" name="payMode"> COD
				<input type="radio" class="form-control" value="Credit Card" name="payMode"> Credit Card
				<input type="radio" class="form-control" value="Net Banking" name="payMode"> Net Banking
			</div>
		</div>

		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-success">Place Order</button>
			</div>
		</div>
	</form>
	
</div>

</body>
</html>
<%@include file="footer.jsp"%>


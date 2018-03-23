<%@include file="header.jsp"%>
<div class="container-fluid" style="width: 100%; background-image:url('resources/images/background1.jpg');">
	<div class="row">
		<div class="col-md-4 col-sm-4 col-xs-12"></div>
		<div class="col-md-4 col-sm-4 col-xs-12">
			<form class="form-container" action="${e}placeOrder" method="post">
				<h1>
					<center>
						<b>Shipping Details</b>
					</center>
				</h1>

				<div class="form-group">
					<label for="name">Name:</label> <input type="text"
					 required=""	class="form-control" id="name" 
						name="name">
				</div>
				<div class="form-group">
					<label for="hno">House No:</label> <input type="text"
						class="form-control" id="hno" 
					 required=""	name="hno">
				</div>
				<div class="form-group">
					<label for="city">City:</label> <input type="text"
						class="form-control" id="city" 
					 required=""	name="city">
				</div>
				<div class="form-group">
					<label for="state">State:</label> <input type="text"
						class="form-control" id="state" 
					 required=""	name="state">
				</div>
				<div class="form-group">
					<label for="pincode">Pincode:</label> <input type="text"
						class="form-control" id="pincode" 
					 required=""	name="pincode">
				</div>
				<div class="form-group">
					<label for="mobile">Mobile:</label> <input type="text"
						class="form-control" id="mobile" 
					 required=""	name="mobile">
				</div>
				<div class="form-group">
					<label for="paymode">Payment Mode:</label>
					<div class="form-control">
						<input required="" type="radio" value="COD" name="payMode"> COD <input
							type="radio" value="Credit Card" name="payMode"> Credit
						Card <input type="radio" value="Net Banking" name="payMode">
						Net Banking
					</div>
				</div>

				<div class="form-group">
					<button type="submit" class="btn btn-success btn-block">Place
						Order</button>
				</div>
			</form>

		</div>
	</div>
</div>
</body>
</html>
<%@include file="footer.jsp"%>


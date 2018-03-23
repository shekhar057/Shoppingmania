<%@include file="header.jsp"%>
<br/>
<div class="container">
   <h1><center><b>My Orders</b></center></h1><hr/>
<c:forEach items="${orderList}" var="order">
<div class="row">
<div class="col-sm-6">
<div class="thumbnail"  >
      <a href="${e}viewProductDetails/${order.product.id}">
        <img src="${e}resources/proImage/${order.product.id}.jpg" alt="Lights" style="height:300px">
      </a>
    </div>
</div>
<div class="col-sm-6">
<span style="font-size: 15px">
<table class="table">
<tr><td><h2>${order.product.name}</h2></td></tr>
<tr><td><b>Order Id : </b>${order.orderID }</td></tr>
    <tr><td><b>Quantity : </b>${order.quantity}</td></tr>
    <tr><td><b>Amount : </b>Rs. ${order.quantity*order.product.price}</td></tr>
    <tr><td><b>Address</b><br/>
    ${order.shippingAddress.name}<br/>
    ${order.shippingAddress.houseno}<br/>
    ${order.shippingAddress.city}<br/>
    ${order.shippingAddress.state}-${order.shippingAddress.pincode}
    </td></tr>
    
</table></span>
</div>
</div></c:forEach>
</div>
<br/><%@include file="footer.jsp"%>
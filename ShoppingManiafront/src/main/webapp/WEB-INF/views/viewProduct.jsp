<%@include file="header.jsp"%>
<br/>
<div class="container-fluid">
<div class="row">
<div class="col-md-2 col-sm-2 col-xs-12"></div>
<div class="col-md-8 col-sm-8 col-xs-12"> 
<table class="table table-striped table-bordered">
  <tr>
    <th colspan="9"><h1><center><b>Products</b></center></h1></th>
  </tr>
  <tr>
    <th>ID</th>
    <th>Image</th>
    <th>Name</th>
    <th>Quantity</th>
    <th>Price</th>
    <th>Description</th>
    <th>Category</th>
    <th>Supplier</th>
    <th>Operation</th>
  </tr>
  <c:forEach items="${p_list}" var="pro">
  <tr>
    <td>${pro.id}</td>
    <td><img src="${e}resources/proImage/${pro.id}.jpg" height="50" width="50"/></td>
    <td>${pro.name}</td>
    <td>${pro.quantity}</td>
    <td>${pro.price}</td>
    <td>${pro.description}</td>
    <td>${pro.category.c_Name}</td>
    <td>${pro.supplier.s_Name}</td>
    <td><a href="${e}updateProductbyid/${pro.id}" class="btn btn-primary">update</a> 
    <a href="${e}deleteProduct/${pro.id}" class="btn btn-primary">delete</a></td>
  </tr>
  </c:forEach>
  
</table></div></div></div>
<%@ include file="footer.jsp" %>

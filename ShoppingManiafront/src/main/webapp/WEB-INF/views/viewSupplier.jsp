<%@include file="header.jsp"%>
<br/>
<div class="container-fluid">
<div class="row">
<div class="col-md-2 col-sm-2 col-xs-12"></div>
<div class="col-md-8 col-sm-8 col-xs-12"> 
<table class="table table-striped table-bordered">
  <tr>
    <th colspan="3"><h1><center><b>Supplier</b></center></h1></th>
  </tr>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Operation</th>
  </tr>
  <c:forEach items="${supList}" var="sup">
  <tr>
    <td>${sup.s_id}</td>
    <td>${sup.s_Name}</td>
    <td><a href="${e}updateSupplierById/${sup.s_id}" class="btn btn-primary">update</a>
    <a href="${e}deleteSupplier/${sup.s_id}" class="btn btn-primary">delete</a></td>
  </tr>
  </c:forEach>
  
</table></div></div></div>
<%@ include file="footer.jsp"%>

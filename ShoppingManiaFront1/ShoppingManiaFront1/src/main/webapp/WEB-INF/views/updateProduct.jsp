<%@ include file="header.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<br/>
<div class="container-fluid" style=" width:100%; background-image:url('resources/images/background1.jpg');">
<div class="row">
<div class="col-md-4 col-sm-4 col-xs-12"></div>
<div class="col-md-4 col-sm-4 col-xs-12"> 
<form:form class="form-container" modelAttribute="product" method="post" action="${e}saveProduct" enctype="multipart/form-data">
<form:input path="id" type="hidden"/>
 <h1><center><b>Update Product</b></center></h1>
   <div class="form-group">
    <label for="name">Enter Name : </label>
  <form:input required="" class="form-control" path="name"/></div>
 <div class="form-group">
    <label for="name">Enter Price : </label>
  <form:input required="" class="form-control" path="price"/></div>
 <div class="form-group">
    <label for="name">Enter Quantity : </label>
  <form:input required="" class="form-control" path="quantity"/></div>
 <div class="form-group">
    <label for="name">Enter Description : </label>
   <form:textarea required="" class="form-control" path="description" rows="5"/></div>
 <div class="form-group">
    <label for="name">Select Supplier : </label>
    <form:select required="" class="form-control" path="supplier.s_id">
<c:forEach items="${s_list}" var="sup">
<form:option value="${sup.s_id}">${sup.s_Name}</form:option>
</c:forEach>
</form:select></div>
 <div class="form-group">
    <label for="name">Select Category : </label>
   <form:select required="" class="form-control" path="category.c_id">
<c:forEach items="${c_list}" var="cat">
<form:option value="${cat.c_id}">${cat.c_Name}</form:option>
</c:forEach>
</form:select></div>
 <div class="form-group">
    <label for="name">Select Image : </label>
<form:input class="form-control" path="image" type="file"/></div>
 <div class="form-group">
  <input type="submit" class="btn btn-primary btn-block"/>
  </div>
</form:form>
</div></div></div>
<%@ include file="footer.jsp" %>
<%@ include file="header.jsp" %>
<div class="container-fluid" style=" width:100%;  background-image:url('resources/images/login1.jpg')">
<div class="row">
<div class="col-md-4 col-sm-4 col-xs-12"></div>
<div class="col-md-4 col-sm-4 col-xs-12"> 

<form action="${ e}updateCategory" method="post" class="form-container">
<h1><span style="color:white;"><b>Add Category</b></span></h1>
  <div class="form-group">
    <label for="c_Name"><span style="color:#fff">Category</span> </label>
    <input type="text" class="form-control" id="c_Name" placeholder="Enter category" name="c_Name" value="${cat.c_Name}">
     <input type="hidden" class="form-control" name="c_id" value="${cat.c_id} ">
  </div>
  <button type="submit" class="btn btn-success btn-block">Submit</button>
</form>

</div></div></div>
<%@ include file="footer.jsp" %> 
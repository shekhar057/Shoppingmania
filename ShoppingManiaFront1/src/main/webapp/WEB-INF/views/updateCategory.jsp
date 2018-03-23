<%@include file="header.jsp"%>
<br/>
<div class="container-fluid" style=" width:100%; background-image:url('resources/images/background1.jpg');">
<div class="row">
<div class="col-md-4 col-sm-4 col-xs-12"></div>
<div class="col-md-4 col-sm-4 col-xs-12"> 
<form class="form-container" action="${e}updateCategory" method="post">
  <input type="hidden" name="c_id" value="${cat.c_id}"/>
  <h1><center><b>Update Category</b></center></h1>
  <div class="form-group">
    <label for="name">Enter Name : </label>
      <input required="" type="text" class="form-control" name="c_Name" id="name" placeholder="Enter Name"  value="${cat.c_Name}">
  </div>
  <div class="form-group"> 
      <button type="submit" class="btn btn-primary btn-block">Submit</button>
  </div>
</form>
</div>
</div></div>
<%@include file="footer.jsp"%>

<%@include file="header.jsp"%>
<br/>
<div class="container-fluid" style=" width:100%;">
<div class="row">
<div class="col-md-4 col-sm-4 col-xs-12"></div>
<div class="col-md-4 col-sm-4 col-xs-12"> 
<form class="form-container" action="${e}updateSupplier" method="post">
   <h1><center><b>Update Supplier</b></center></h1>
<input type="hidden" name="s_id" value="${sup.s_id}"/>
    <div class="form-group">
    <label for="name">Enter Name : </label>
       <input required="" type="text" class="form-control" name="s_Name" id="name" placeholder="Enter Name" value="${sup.s_Name}">
  </div>
  <div class="form-group"> 
      <button type="submit" class="btn btn-primary btn-block">Submit</button>
  </div>
</form>

</div></div></div>
<%@include file="footer.jsp"%>

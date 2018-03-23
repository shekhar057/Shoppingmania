<%@include file="header.jsp"%>
<div class="container">
<form class="form-horizontal" action="${e}saveSupplier" method="post">
  <div class="form-group">
    <label class="control-label col-sm-2" for="name">Enter Name : </label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="s_Name" id="name" placeholder="Enter Name">
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>
</form>

</div>
<%@include file="footer.jsp"%>

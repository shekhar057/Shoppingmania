<%@ include file="header.jsp" %>

<div class="container-fluid" style=" width:100%;  background-image:url('resources/images/background.jpg')">
<div class="row">
<div class="col-md-4 col-sm-4 col-xs-12"></div>
<div class="col-md-4 col-sm-4 col-xs-12"> 

<form class="form-container" action="${e}perform_login" method="post">
<h1><span style="color:white;"><b>LOGIN HERE</b></span></h1>
  <div class="form-group">
    <label for="Email"><span style="color:#fff">Username</span> </label>
    <input name="username" class="form-control" id="Email" placeholder="Username">
  </div>
  <div class="form-group">
    <label for="Password"><span style="color:#fff;">Password</span></label>
    <input type="password" name="password" class="form-control" id="Password" placeholder="Password">
  </div>
 
  <div class="checkbox">
    <label>
      <input type="checkbox"><span style="color:#fff;"> Remember me</span>
    </label>
  </div>
  <button type="submit" class="btn btn-success btn-block">login</button>
</form>

</div>
<div class=" col-md-4 col-sm-4 col-xs-12"></div>
</div>
</div>

<%@ include file="footer.jsp" %>
<%@include file="header.jsp" %>
<div class="container-fluid" style=" width:100%; height:100vh; repeat:no-repeat; background-image:url('resources/images/background.jpg') ">
<div class="row">
<div class="col-md-4 col-sm-4 col-xs-12"></div>
<div class="col-md-4 col-sm-4 col-xs-12"> 
<form class="form-container" action="${e}adduser" method="post" style="margin-top:0%;margin-bottom:20px%;">
<h1><center><b>REGISTER</b></center></h1>
 <div class="form-group">
    <label  for="pwd" >Username:</label>
      <input required="" type="text" class="form-control" id="pwd" placeholder="Enter username" name="username">
  </div>
  
  <div class="form-group">
    <label  for="pwd" >Name:</label>
      <input required="" type="text" class="form-control" id="pwd" placeholder="Enter username" name="name">
  </div>

  <div class="form-group">
    <label  for="email">Email:</label>
      <input required="" type="email" class="form-control" id="email" placeholder="Enter email" name="email">
  </div>
  <div class="form-group">
    <label  for="pwd">Contact number:</label>
      <input required="" type="tel" class="form-control" id="pwd" placeholder="contact no." name="tel">
  </div>

<div class="form-group">
    <label  for="pwd">Address:</label>
 
     <textarea required="" max="255" type="text" class="form-control" id="pwd" placeholder="Enter address" name="add"></textarea>
  </div>
  

<div class="form-group">
    <label  for="pwd">Password:</label>
      <input required="" type="password" class="form-control" id="pwd" placeholder="Enter password" name="pass">
  </div>
  

  <div class="form-group"> 
      <button type="submit" class="btn btn-success btn-block" >
Register</button>
    </div>
</form>
</div>

</div>
</div>
<%@include file="footer.jsp" %>


<%@include file="header.jsp" %>
<div  style=" background:url('resources/images/background.jpg'); ">
<div class="container-fluid" >
<br/><br/><div class="row">
<div class="col-md-4 col-sm-4 col-xs-12"></div>
<div class="col-md-4 col-sm-4 col-xs-12"> 
<form class="form-container" onsubmit="return validation();" action="${e}adduser" method="post" style="margin-top:0%;margin-bottom:0px%; color:white; ">
<h1><center><b>REGISTER</b></center></h1>
 <div class="form-group">
    <label  for="username" >Username:</label>
      <input required="" type="text" class="form-control" id="username" placeholder="Enter username" name="username">
  		<span id="username" class="danger"></span>
  </div>
  
  <div class="form-group">
    <label  for="name" >Name:</label>
      <input required="" type="text" class="form-control" id="name" placeholder="Enter username" name="name">
  </div>

  <div class="form-group">
    <label  for="email">Email:</label>
      <input required="" type="email" class="form-control" id="email" placeholder="Enter email" name="email">
  </div>
  <div class="form-group">
    <label  for="cno">Contact number:</label>
      <input required="" type="tel" class="form-control" id="cno" placeholder="contact no." name="tel" pattern="[6-9]{1}[0-9]{9}" title="please enter valid number"  maxlength="10">
  </div>

<div class="form-group">
    <label  for="add">Address:</label>
     <textarea required="" max="255" type="text" class="form-control" id="add" placeholder="Enter address" name="add"></textarea>
  </div>
  

<div class="form-group">
    <label  for="pwd">Password:</label>
      <input required="" type="password" class="form-control" id="pwd" placeholder="Enter password" name="pass" pattern=".{6,}">
  </div>
  

  <div class="form-group"> 
      <button type="submit" class="btn btn-success btn-block" >Register</button>
     </div>
</form>

</div>
</div>
</div>

</div>
<%@include file="footer.jsp" %>


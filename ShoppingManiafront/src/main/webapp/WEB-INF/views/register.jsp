 
<%@ include file="header.jsp" %>


 <div class="container-fluid" style="background-image:url('resources/images/background.jpg'); width:100%; height:100vh; margin-top:0px;" > 

<div class="container" ">


<center><h1 style="font-family:Cambria "><b><span style="color:rgb(0, 51, 51)">Registration</span></b></h1></center>

<form class="form-horizontal content" action="adduser" id="form" method="post">

  <div class="form-group">
    <label class="control-label col-sm-2" for="name"><b>Name : </b></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="name" placeholder="Enter Name" name="name">
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="name"><b>Username : </b></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="username" placeholder="Enter Name" name="username">
    </div>
  </div>
  
  <div class="form-group">  
    <label class="control-label col-sm-2" for="mobile"><b>Mobile : </b></label>
    <div class="col-sm-10">
      <input type="long" class="form-control" id="mobile" placeholder="Enter Mobile" name="mobile">
    </div>
  </div>
  
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="email"><b>Email : </b></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="email" placeholder="Enter Email" name="email">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="name"><b>Password : </b></label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="password" placeholder="Enter Password" name="password">
    </div>
  </div>
  
    <div class="form-group">
    <label class="control-label col-sm-2" for="address"><b>Address : </b></label>
    <div class="col-sm-10">
      <textarea class="form-control" id="address" placeholder="Enter Address" name="address"></textarea>
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-info">Submit</button>
    </div>
  </div>
</form>
</div>
</div>
<%@ include file="footer.jsp" %>

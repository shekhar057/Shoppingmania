<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!Doctype html>

<html>
<head>
<c:url var="e" value="/"></c:url>
  <title>ShoppingMania</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
  .bg-1 { 
      background-color: #2f2f2f; /* Black Gray */
      color: #fff;
      }
      .container .content{
    position: fix;
    background: rgba(0, 0, 0, 0.5); /* Black background with transparency */
    color: #f1f1f1;
    width: 100%;
    margin-top:52px;
      }
      .form-container{
      border:px solid:#fff;
      padding:50px 60px;
      margin-top:100px;
      margin-bottom:100px;
     -webkit-box-shadow: 0px 0px 18px 9px rgba(0,0,0,0.75);
-moz-box-shadow: 0px 0px 18px 9px rgba(0,0,0,0.75);
box-shadow: 0px 0px 18px 9px rgba(0,0,0,0.75);     
      }
      .btn-lg{
      	margin-top:100px;
		margin-bottom:100px;
      
      }
      
  </style>
</head>
<body>

<nav class="navbar nav-tab" style="background-color:#f5f6f7; margin:0">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
       <a class="navbar-brand" href="#"><span Style="font-family:Comic Sans MS">ShoppingMania</span></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    
      <ul class="nav navbar-nav">
        <li class="active"><a href="${e}">Home</a></li>
        <c:if test='<%=session.getAttribute("loggedin")!=null%>'>
      <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories <span class="caret"></span></a>
          <ul class="dropdown-menu">
          <c:forEach items="${sessionScope.catList}" var="cat">
            <li><a href="${e}viewProductByCategory/${cat.c_id}">${cat.c_Name}</a></li> 
		  </c:forEach>
         </ul>
        </li></c:if>
        <li><a href="#">About Us</a></li>
        <li><a href="#">Costumer Service</a></li>
      </ul>
      <form class="navbar-form navbar-left" action="/action_page.php">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search glyphicon-lg"></i>
      </button>
        </div>
      </div>
    </form>
      <ul class="nav navbar-nav">
      <li><a href="admin">Admin</a></li>
      </ul>
      <sec:authentication var="user" property="principal"/>
      <ul class="nav navbar-nav navbar-right">
       <c:if test='<%=session.getAttribute("loggedin")==null%>'>
        <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:if>
      <c:if test='<%=session.getAttribute("loggedin")!=null%>'>
                   <li><a>Welcome ${user.username}</a></li>
    <li><a href="${e}perform_logout"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
      </c:if></ul>
    </div>
  </div>
</nav>

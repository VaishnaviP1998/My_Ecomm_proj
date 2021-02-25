<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <title>Fashion Bazar-${pagename}</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div style="background-color:#FBEEE6;right:10px;">


</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
   <a class="navbar-brand" href="#">
    <img src="<c:url value='./images/home2.png'/>" alt="logo" style="width:60px;height:60px"/>
  </a>
  <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="home">Home</a>
      
      
      <c:if test="${sessionScope.role==null}">	
      <li class="nav-item">
        <a class="nav-link" href="login">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="showUserDetail">Register</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="AboutUs">About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="ContactUs">Contact Us</a>
      </li>
      </c:if>
      <c:if test="${sessionScope.role!=null}">
 		<c:if  test="${sessionScope.role=='ROLE_ADMIN'}">
 
      <li class="nav-item">
        <a class="nav-link" href="showCategory">Manage Category</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="showProduct">Manage Product</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="showSupplier">Manage Supplier</a>
      </li>
      
      <c:if  test="${sessionScope.role=='ROLE_USER'}">
	<li class="nav-item">
        <a class="nav-link" href="showUserDetail">Manage User Detail</a>
         
      </li>
	</c:if>
	</c:if>
	</c:if>
      
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
    <c:if test="${sessionScope.role==null}">
    <li><a href="login"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>&nbsp;
    <li><a href="login"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
    </c:if>
    <c:if test="${sessionScope.role!=null}">
    <li><a href="login"><span class="glyphicon glyphicon-user"></span>Sign Out</a></li>
    </c:if>
    
    </ul>
    
    </nav>
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-bottom">
 
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="home">Home</a>
    </li>
    
  </ul>
</nav>
  
	
		
</body>
</html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bootstrap 4 Dropdowns within a Nav</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<%
	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	
	if(session.getAttribute("username")== null)
		response.sendRedirect("loginScreen.jsp");

%>

<nav class="navbar navbar-inverse">  
  <div class="container-fluid">  
    <!--  <div class="navbar-header">  
      <a class="navbar-brand" href="#">WebSiteName</a>  
    </div>-->  
    <ul class="nav navbar-nav">  
      <li class="active"><a href="#">Home</a></li>  
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Register <span class="caret"></span></a>  
        <ul class="dropdown-menu">  
          <li><a href="${pageContext.request.contextPath}/registrationPatient.jsp" class="dropdown-item">Register Patient</a></li>  
          <li><a href="${pageContext.request.contextPath}/registrationAdmin.jsp" class="dropdown-item">Register Admin</a></li>  
          <li><a href="${pageContext.request.contextPath}/registrationDoctor.jsp" class="dropdown-item">Register Doctor</a></li>  
        </ul>  
      </li>  
	       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">List <span class="caret"></span></a>  
        <ul class="dropdown-menu">  
          <li><a href="${pageContext.request.contextPath}/listPatients" class="dropdown-item">List All Patient</a></li>  
        </ul>  
      </li>  
      <li><a href="${pageContext.request.contextPath}/treatment.jsp">Add treatment</a></li>
      <li><a href="${pageContext.request.contextPath}/InsertTransaction">Make Payment</a></li>
      <!--<li><a href="#">Page 2</a></li>  
      <li><a href="#">Page 3</a></li>  -->
    </ul>  
    <ul class="nav navbar-nav navbar-right">  
		<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">${username} <span class="caret"></span></a>  
        <ul class="dropdown-menu">  
          <li><a href="${pageContext.request.contextPath}/changePassword.jsp" class="dropdown-item">Change Password</a></li>  
          <li><a href="${pageContext.request.contextPath}/logout" class="dropdown-item">Logout</a></li>   
        </ul>  
      </li>  
      <!--<li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>  
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>  -->
    </ul>  
  </div>  
</nav>  
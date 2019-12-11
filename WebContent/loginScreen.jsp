<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
</head>
<body>

<div class="container">
  <center><h2>Patient Billing System</h2></center>
  <center><h4>Login Form</h4></center>
  <form class="form-horizontal" action="<%=request.getContextPath()%>/login" method="post">
    <div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="email">Email:</label>
		<div class="col-sm-4">
			<input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
    <div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="pwd">Password:</label>
		<div class="col-sm-4">          
			<input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
		
	<div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="role">Role</label>
		<div class="col-sm-4">
			<select id="role" name = "role" class="form-control">
				<option>Select</option>
				<option>Doctor</option>				
				<option>Admin</option>
			</select> 
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-4 col-sm-8">
        <button type="submit" class="btn btn-default">Login</button>
      </div>
    </div>
  </form>
</div>

</body>
</html>
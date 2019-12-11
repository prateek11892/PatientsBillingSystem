<!DOCTYPE html>
<html lang="en">
<head>
  <title>Patient Registration</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
</head>
<body>

<div class="container">
  <center><h2>Patient Billing System</h2></center>
  <center><h4>Doctor Registration Form</h4></center>
  
  <jsp:include page="header.jsp"/>
  
  <form class="form-horizontal" action="<%=request.getContextPath()%>/RegisterDoctor" method="post">
    <div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="firstName">First Name:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="firstName" placeholder="Enter first name" name="firstName">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
	<div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="lastName">Last Name:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="lastName" placeholder="Enter last name" name="lastName">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
	<div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="address">Address:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="address" placeholder="Enter address" name="address">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
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
		<label class="control-label col-sm-2" for="phoneNo">Phone No:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="phoneNo" placeholder="Enter Phone Number" name="phoneNo">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
	<div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="expertise">Expertise:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="expertise" placeholder="Enter Expertise" name="expertise">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>	
	<div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="role">Role:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="role" value="Doctor" name="role" readonly>
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
	
    <div class="form-group">        
      <div class="col-sm-offset-4 col-sm-8">
        <button type="submit" class="btn btn-default">Register</button>
      </div>
    </div>
  </form>
</div>

</body>
</html>

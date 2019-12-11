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
  <center><h4>Change Password</h4></center>
  
  <jsp:include page="header.jsp"/>
  
  <form class="form-horizontal" action="<%=request.getContextPath()%>/ChangePassword" method="post">
    <div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="oldPassword">Old Password:</label>
		<div class="col-sm-4">
			<input type="password" class="form-control" id="oldPassword" placeholder="Enter old Password" name="oldPassword">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
    <div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="newPassword">New Password:</label>
		<div class="col-sm-4">          
			<input type="password" class="form-control" id="newPassword" placeholder="Enter new password" name="newPassword">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
	<div class="form-group">
		
		<label class="control-label col-sm-4" for="confirmNewPassword">Confirm New Password:</label>
		<div class="col-sm-4">          
			<input type="password" class="form-control" id="confirmNewPassword" placeholder="Confirm new password" name="confirmNewPassword">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>	
    <div class="form-group">        
      <div class="col-sm-offset-4 col-sm-8">
        <button type="submit" class="btn btn-default">Change Password</button>
      </div>
    </div>
  </form>
</div>

</body>
</html>

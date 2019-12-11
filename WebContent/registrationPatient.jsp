<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <center><h4>Patient Registration Form</h4></center>
  
  <jsp:include page="header.jsp"/>
  <form class="form-horizontal" action="<%=request.getContextPath()%>/RegisterPatient" method="post">
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
		<label class="control-label col-sm-2" for="phoneNo">Phone No:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="phoneNo" placeholder="Enter Phone Number" name="phoneNo">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>	
    <div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="birthDate">Birth Date:</label>
		<div class="col-sm-4">
			<input type="date" class="form-control" id="birthDate" placeholder="Enter Birth Date" name="birthDate">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
    <div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="bloodGroup">Blood Group:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="bloodGroup" placeholder="Enter Blood Group" name="bloodGroup">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
    <div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="admitDate">Admit Date:</label>
		<div class="col-sm-4">
			<input type="date" class="form-control" id="admitDate" placeholder="Enter Admit Date" name="admitDate">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
    <div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="dischargeDate">Discharge Date:</label>
		<div class="col-sm-4">
			<input type="date" class="form-control" id="dischargeDate" placeholder="Enter Discharge Date" name="dischargeDate">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>    
    <div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="wardId">Ward Id:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="wardId" placeholder="Enter Ward Id" name="wardId">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
	<div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="role">Role:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="role" value="Patient" name="role" readonly>
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

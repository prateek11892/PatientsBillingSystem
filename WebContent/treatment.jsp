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
  <center><h4>Treatment</h4></center>
  
  <jsp:include page="header.jsp"/>
  
  <form class="form-horizontal" action="<%=request.getContextPath()%>/AddTreatment" method="post">
    <div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="patientId">Patient Id:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="patientId" placeholder="Enter Patient Id" name="patientId">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
    <div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="treatment">Treatment:</label>
		<div class="col-sm-4">          
			<input type="text" class="form-control" id="treatment" placeholder="Enter Treatment" name="treatment">
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
		<label class="control-label col-sm-2" for="treatmentCharges">Treatment Charges:</label>
		<div class="col-sm-4">          
			<input type="text" class="form-control" id="treatmentCharges" placeholder="Enter Treatment Charges" name="treatmentCharges">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-4 col-sm-8">
        <button type="submit" class="btn btn-default">Add Treatment</button>
      </div>
    </div>
  </form>
</div>

</body>
</html>

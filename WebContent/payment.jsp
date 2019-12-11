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
  <center><h4>Patient Bill</h4></center>
  
  <jsp:include page="header.jsp"/>
  <form class="form-horizontal" action="<%=request.getContextPath()%>/InitiateTransaction" method="post">
    <div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="patientId">Patient Id:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="patientId" value=<%=request.getParameter("patientId") %> name="patientId" readonly>
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
	<div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="transactionId">Transaction Id:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="transactionId" value=<%=request.getParameter("transactionId") %> name="transactionId" readonly>
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
	<div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="transactionDate">Transaction Date:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="transactionDate" value=<%=request.getParameter("transactionDate") %> name="transactionDate" readonly>
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
	<div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="transactionAmount">Transaction Amount:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="transactionAmount" value=<%=request.getParameter("transactionAmount") %> name="transactionAmount" readonly>
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
    
    <div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="paymentRefId">Payment Ref Id:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="paymentRefId" value=<%=request.getParameter("transactionId") %> name="paymentRefId" readonly>
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
	<div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="paymentAmount">Payment Amount:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="paymentAmount" value=<%=request.getParameter("transactionAmount") %> name="paymentAmount" readonly>
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
	
    <div class="form-group">        
      <div class="col-sm-offset-4 col-sm-8">
        <button type="submit" class="btn btn-default">Confirm Payment</button>
      </div>
    </div>
  </form>
</div>

</body>
</html>

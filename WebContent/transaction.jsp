<!DOCTYPE html>
<%@ page import="com.hospital.demo.payment.*" %>
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
  <form class="form-horizontal" action="<%=request.getContextPath()%>/payment.jsp" method="post">
    <div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="patientId">Patient Id:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="patientId" placeholder="Enter patient id" name="patientId">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
	<div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="transactionId">Transaction Id:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="transactionId" value=<%= ((Transaction)(session.getAttribute("transactionMetaData"))).getTransactionId() %> name="transactionId" readonly>
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
	<div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="transactionDate">Transaction Date:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="transactionDate" value=<%= ((Transaction)(session.getAttribute("transactionMetaData"))).getTransactionDate() %> name="transactionDate" readonly>
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
	<div class="form-group">
		<label class="control-label col-sm-2" ></label>
		<label class="control-label col-sm-2" for="transactionAmount">Transaction Amount:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="transactionAmount" placeholder="Enter Transaction Amount" name="transactionAmount">
		</div>
		<label class="control-label col-sm-4" ></label>
    </div>
	<div class="form-group">        
      <div class="col-sm-offset-4 col-sm-8">
        <button type="submit" class="btn btn-default">Initiate Transaction</button>
      </div>
    </div>
  </form>
</div>

</body>
</html>

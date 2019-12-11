<!DOCTYPE html>
<%@ page import="java.sql.*" %>
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
  <%
    ResultSet rs = (ResultSet)session.getAttribute("billDetails");
	rs.next();
	%>
  <jsp:include page="header.jsp"/>
  <form class="form-horizontal" action="/action_page.php">
    <div class="form-group">
		<label class="control-label col-sm-2" for="patientId">PatientId:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="patientId" value=<%=rs.getString(1) %> name="patientId" readonly>
		</div>
		<label class="control-label col-sm-2" for="billNo">Bill No:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="billNo" value=<%=rs.getString(6) %> name="billNo" readonly>
		</div>
    </div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="patientName">Patient Name:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="patientName" value=<%=rs.getString(2) + rs.getString(3)%> name="patientName" readonly>
		</div>
		<label class="control-label col-sm-2" for="billDate">Bill Date:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="billDate" value=<%=rs.getString(7) %> name="billDate" readonly>
		</div>
    </div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="admitDate">Admit Date:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="admitDate" value=<%=rs.getString(4) %> name="admitDate" readonly>
		</div>
		<label class="control-label col-sm-2" for="billAmount">Bill Amount:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="billAmount" value=<%=rs.getString(8) %> name="billAmount" readonly>
		</div>
    </div>
	<div class="form-group">
		<%-- <label class="control-label col-sm-2" for="dischargeDate">Discharge Date:</label>
		<div class="col-sm-4">
			<input type="email" class="form-control" id="dischargeDate" value=<%=rs.getString(5) %> name="dischargeDate" readonly>
		</div> --%>
		
		<label class="control-label col-sm-2" for="billStatus">Bill Status:</label>
		<div class="col-sm-4">
			<input type="email" class="form-control" id="billStatus" value=<%=rs.getString(9) %> name="billStatus" readonly>
		</div>
		
    </div>
    
  </form>
</div>

</body>
</html>

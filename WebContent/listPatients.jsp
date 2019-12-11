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
  <center><h4>Patient Registration Form</h4></center>
  
  <jsp:include page="header.jsp"/>           
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Patient Id</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Register Date</th>
        <th>Address</th>
        <th>Phone Number</th>
        <th>Birth Date</th>
        <th>Admit Date</th>
        <th>Discharge Date</th>
        <th>Blood Group</th>
        <th>Amount Due</th>
      </tr>
    </thead>
    <tbody>
    <%
    ResultSet rs = (ResultSet)session.getAttribute("patientsData");
	while (rs.next()) {
	%>
      <tr>
        <td><%=rs.getString(1) %></td>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
        
        <td><%=rs.getString(4) %></td>
        <td><%=rs.getString(5) %></td>
        <td><%=rs.getString(6) %></td>
        
        <td><%=rs.getString(7) %></td>
        <td><%=rs.getString(8) %></td>
        <td><%=rs.getString(9) %></td>
        <td><%=rs.getString(10) %></td>
        <td><%=rs.getString(11) %></td>
      </tr>
     <% } %> 
    </tbody>
  </table>
</div>

</body>
</html>

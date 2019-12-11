package com.hospital.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.database.DatabaseUtils;
import com.hospital.demo.payment.Transaction;

@WebServlet("/InitiateTransaction")
public class InitiateTransactionServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

    	PrintWriter out = response.getWriter();
    	
    	int patientId = Integer.parseInt(request.getParameter("patientId"));
    	Transaction transaction = new Transaction();
    	transaction.setTransactionId(request.getParameter("transactionId"));
    	transaction.setTransactionDate(request.getParameter("transactionDate"));
    	transaction.setTransactionAmount(request.getParameter("transactionAmount"));
    	
    	boolean status = DatabaseUtils.initiateTransaction(transaction, patientId);
    	
    	ResultSet rs = DatabaseUtils.fetchPatientDetails(transaction.getTransactionId(),patientId);
    	if( status == true) {
    		HttpSession session = request.getSession();
    		session.setAttribute("billDetails",rs);
    		out.println("Transaction done successfully");
    		request.getRequestDispatcher("bill.jsp").include(request, response);
    	}
    	else {
    		out.println("Transaction failed");
    		request.getRequestDispatcher("transaction.jsp").include(request, response);
    	}
	}  

}

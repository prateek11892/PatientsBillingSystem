package com.hospital.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.database.DatabaseUtils;
import com.hospital.demo.payment.Transaction;

@WebServlet("/InsertTransaction")
public class InsertTransactionServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

    	Transaction transaction = DatabaseUtils.insertTransaction();
    	HttpSession session = request.getSession();
    	session.setAttribute("transactionMetaData", transaction);
    	request.getRequestDispatcher("transaction.jsp").include(request, response);
	}  
}

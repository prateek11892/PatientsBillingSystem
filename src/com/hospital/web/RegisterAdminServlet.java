package com.hospital.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.database.DatabaseUtils;
import com.hospital.model.Admin;

@WebServlet("/RegisterAdmin")
public class RegisterAdminServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

    	Admin admin = new Admin();
    	PrintWriter out = response.getWriter();
    	admin.setEmail(request.getParameter("email"));
    	admin.setFirstName(request.getParameter("firstName"));
    	admin.setLastName(request.getParameter("lastName"));
    	admin.setPassword(admin.getFirstName()+"@123");
    	admin.setAddress(request.getParameter("address"));
    	admin.setPhoneNum(request.getParameter("phoneNo"));
    	admin.setRegisterDate(request.getParameter("registerDate"));
    	
    	boolean status = DatabaseUtils.registerAdmin(admin);
    	
    	if( status == true) {
    		out.println("Admin registered successfully");
    		request.getRequestDispatcher("registrationAdmin.jsp").include(request, response);
    	}
    	else {
    		out.println("Admin registration failed");
    		request.getRequestDispatcher("registrationAdmin.jsp").include(request, response);
    	}
	}  

}

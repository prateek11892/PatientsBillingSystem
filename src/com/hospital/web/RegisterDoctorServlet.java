package com.hospital.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.database.DatabaseUtils;
import com.hospital.model.Doctor;

@WebServlet("/RegisterDoctor")
public class RegisterDoctorServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

    	Doctor doctor = new Doctor();
    	PrintWriter out = response.getWriter();
    	doctor.setEmail(request.getParameter("email"));
    	doctor.setFirstName(request.getParameter("firstName"));
    	doctor.setLastName(request.getParameter("lastName"));
    	doctor.setPassword(doctor.getFirstName()+"@123");
    	doctor.setAddress(request.getParameter("address"));
    	doctor.setPhoneNum(request.getParameter("phoneNo"));
    	doctor.setRegisterDate(request.getParameter("registerDate"));
    	
    	doctor.setExpertise(request.getParameter("expertise"));
    	
    	boolean status = DatabaseUtils.registerDoctor(doctor);
    	
    	if( status == true) {
    		out.println("Doctor registered successfully");
    		request.getRequestDispatcher("registrationDoctor.jsp").include(request, response);
    	}
    	else {
    		out.println("Doctor registration failed");
    		request.getRequestDispatcher("registrationDoctor.jsp").include(request, response);
    	}
	}  

}

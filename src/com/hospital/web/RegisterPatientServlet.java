package com.hospital.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.model.Patient;

@WebServlet("/RegisterPatient")
public class RegisterPatientServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

    	Patient patient = new Patient();
    	PrintWriter out = response.getWriter();
    	SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
        Date todayDate = new Date();  
    	patient.setEmail(request.getParameter("email"));
    	patient.setFirstName(request.getParameter("firstName"));
    	patient.setLastName(request.getParameter("lastName"));
    	patient.setPassword(patient.getFirstName()+"@123");
    	patient.setAddress(request.getParameter("address"));
    	patient.setPhoneNum(request.getParameter("phoneNo"));
    	patient.setRegisterDate(formatter.format(todayDate));
    	
    	patient.setAdmitDate(request.getParameter("admitDate"));
    	patient.setBirthDate(request.getParameter("birthDate"));
    	patient.setDischargeDate(request.getParameter("dischargeDate"));
    	
    	patient.setBloodGroup(request.getParameter("bloodGroup"));
    	
    	int wardId = Integer.parseInt(request.getParameter("wardId"));
    	
    	boolean status = patient.registerPatient(patient, wardId);
    	
    	if( status == true) {
    		out.println("Patient registered successfully");
    		request.getRequestDispatcher("registrationPatient.jsp").include(request, response);
    	}
    	else {
    		out.println("Patient registration failed");
    		request.getRequestDispatcher("registrationPatient.jsp").include(request, response);
    	}
	}  

}

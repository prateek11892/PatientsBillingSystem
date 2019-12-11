package com.hospital.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.database.DatabaseUtils;

@WebServlet("/AddTreatment")
public class AddTreatmentServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

    	PrintWriter out = response.getWriter();
    	
    	int patientId = Integer.parseInt(request.getParameter("patientId"));
    	String treatment = request.getParameter("treatment");
    	int wardId = Integer.parseInt(request.getParameter("wardId"));
    	int treatmentCharges = Integer.parseInt(request.getParameter("treatmentCharges"));
    	
    	
    	boolean status = DatabaseUtils.addTreatment(patientId, treatment, wardId, treatmentCharges);
    	
    	if( status == true) {
    		out.println("Treatment registered successfully");
    		request.getRequestDispatcher("treatment.jsp").include(request, response);
    	}
    	else {
    		out.println("Treatment registration failed");
    		request.getRequestDispatcher("treatment.jsp").include(request, response);
    	}
	}  

}

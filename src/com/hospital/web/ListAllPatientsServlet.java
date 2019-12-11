package com.hospital.web;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.database.DatabaseUtils;

@WebServlet("/listPatients")
public class ListAllPatientsServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		
		ResultSet rs = DatabaseUtils.getAllPatientsData();
		
		HttpSession session = request.getSession();
		session.setAttribute("patientsData", rs);

		request.getRequestDispatcher("listPatients.jsp").include(request, response);

		session.invalidate();

	}
}

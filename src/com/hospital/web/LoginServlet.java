package com.hospital.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.model.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("pwd");
		String role = request.getParameter("role");
		PrintWriter out = response.getWriter();
		
		User user = new User();
		
		if (user.verifyLogin(email, password, role)) {
			HttpSession session = request.getSession();
			session.setAttribute("username", email);
			response.sendRedirect("homepage.jsp");
		} else {
			out.println("Incorrect Credentials");
    		request.getRequestDispatcher("loginScreen.jsp").include(request, response);
		}
	}
}

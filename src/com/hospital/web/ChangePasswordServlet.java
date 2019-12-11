package com.hospital.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.database.DatabaseConnection;

@WebServlet("/ChangePassword")
public class ChangePasswordServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

    	HttpSession session = request.getSession();
    	String email = (String)session.getAttribute("username");
        String oldPwd = request.getParameter("oldPassword");
        String newPwd = request.getParameter("newPassword");
        
        Connection con = null;
        Statement stmt = null;
        PrintWriter out=response.getWriter();
                
        con = DatabaseConnection.getConnection("user", "root", "admin");
        
        int i;
		try {
			stmt=con.createStatement();
			String updateQuery = "update user set password = '"+newPwd+"' where email = '"+email+"' and password = '"+oldPwd+"'";
			System.out.println(updateQuery);
			i = stmt.executeUpdate(updateQuery);
			if(i>0)
				out.println("Updated Successfully");
			else
				out.println("Update Unsuccessful");
			request.getRequestDispatcher("changePassword.jsp").include(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
    }
}

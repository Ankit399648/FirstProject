package com.registration;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/LogIn")
public class LogIn extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("uname");
		String pass=request.getParameter("password");
		Authentication auth=new Authentication();
		PrintWriter out=response.getWriter();
		if(auth.login(uname, pass)) {
			out.println("<html>"
					+ "<head>"
					+ "<title>Insert title here</title>"
					+ "</head>"
					+ "<body>"
					+ "	<h1>Login succesfull</h1>"
					+ "</body>"
					+ "</html>");
		}
		else {
			out.println("<html>"
					+ "<head>"
					+ "<title>Insert title here</title>"
					+ "</head>"
					+ "<body>"
					+ "	<h1>Login failed</h1>"
					+ "</body>"
					+ "</html>");
		}
	}

}

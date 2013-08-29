package org.gymadviser.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gymAdviser.dto.Admin;
import org.gymadviser.service.LoginService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String userId, password;
		userId = request.getParameter("userID");
		password = request.getParameter("password");
		LoginService loginService = new LoginService();
		boolean result = loginService.authentificate(userId, password);
		if (result) {
			Admin user = loginService.getAdminDetales(userId);
			request.getSession().setAttribute("user", user);
			response.sendRedirect("tables.jsp");
			return;
		}
		response.sendRedirect("index.jsp");
	}

}

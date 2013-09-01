package org.gymadviser.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gymAdviser.dto.Admin;
import org.gymadviser.service.LoginService;
import org.gymadviser.service.TablesService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/table")
public class TableServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		    throws IOException, ServletException {
	
	}
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		/*String database, userId, password;
		database = request.getParameter("database");
		userId = request.getParameter("userID");
		password = request.getParameter("password");
		LoginService loginService = new LoginService();
		boolean result = loginService.authentificate(database, userId, password);
		if (result) {
			Admin admin = loginService.getAdminDetales(userId);
			TablesService tablesService = new TablesService(database, userId, password);
			ArrayList<String> tables = tablesService.getTables();
			request.getSession().setAttribute("admin", admin);
			request.getSession().setAttribute("tables", tables);
			System.out.print(admin.getAdminName());
			response.sendRedirect("tables.jsp");
			return;
		}
		response.sendRedirect("index.jsp");*/
	}

}
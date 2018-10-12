package com.ontimepizza.indexservlet;

import java.io.IOException;
import java.sql.Connection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ontimepizza.common.dto.ErrorDto;
import com.ontimepizza.dao.LoginDao;
import com.ontimepizza.dto.LoginDto;

public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	ErrorDto errorDto = new ErrorDto();
	LoginDao logindao;
	String redirectpage = "login.jsp";
	String responsemsg = null;
	RequestDispatcher rd = null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html");
		LoginDto login = new LoginDto();
		login.setUsername(request.getParameter("username"));
		login.setPassword(request.getParameter("password"));

		Connection con = (Connection) getServletContext().getAttribute("con");

		logindao = new LoginDao(login, con, errorDto);
		LoginDto verifieduser = null;
		try {
			verifieduser = logindao.verifyuser();
			if (verifieduser != null) {
				//System.out.println("hello world");
				redirectpage = "dashboard.jsp";
			} else {
				//System.out.println("hello worl222d");
				responsemsg = "login failed";
				
			}
		} catch (Exception except) {
			errorDto.setHasError(true);
			errorDto.setFileName("LoginServlet.java");
			System.out.println(except);
		}
		request.setAttribute("errorDto", errorDto);
		request.setAttribute("responsemsg", responsemsg);
		rd = request.getRequestDispatcher(redirectpage);
		rd.forward(request, response);
	}

}

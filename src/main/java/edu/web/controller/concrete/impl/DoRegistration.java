package edu.web.controller.concrete.impl;

import java.io.IOException;

import edu.web.bean.AuthInfo;
import edu.web.bean.User;
import edu.web.bean.UserRegInfo;
import edu.web.controller.concrete.Command;
import edu.web.logic.LogicStub;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class DoRegistration implements Command {
	private final LogicStub logic = new LogicStub();

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Name " + request.getParameter("name"));
		System.out.println("Login " + request.getParameter("email"));
		System.out.println("Password " + request.getParameter("password"));
		
		
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		User user = logic.checkReg(new UserRegInfo(login,password));
		
		if (user != null) {
			HttpSession session = (HttpSession) request.getSession(true);
			session.setAttribute("user", user);

			response.sendRedirect("Controller?command=go_to_start_page");

		} else {

			response.sendRedirect("Controller?command=go_to_registration_page&regError=User already exist");

		}
	}

}

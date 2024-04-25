package edu.web.controller.concrete.impl;

import java.io.IOException;

import edu.web.bean.News;
import edu.web.controller.concrete.Command;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class GoToStartPage implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//stub
		News news  = new News("Стоимость Porsche 911 992 - 250 000 €", "Стоимость почки в странах Западной Европы – до 450 000 €");
		request.setAttribute("mainNews", news);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/startpage.jsp");
		dispatcher.forward(request, response);
		
	}

}

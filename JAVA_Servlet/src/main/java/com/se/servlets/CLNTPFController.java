package com.se.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.se.dao.AGNTPFDAO;
import com.se.dao.CLNTPFDAO;
import com.se.model.AGNTPF;
import com.se.model.CLNTPF;

/**
 * Servlet implementation class CLNTPFServlet
 */
@WebServlet("/CLNTPFController")
public class CLNTPFController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private CLNTPFDAO clntpfdao;
	private AGNTPFDAO agntpfdao;

	public void init() throws ServletException {
		clntpfdao = new CLNTPFDAO();
		agntpfdao = new AGNTPFDAO();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
		    response.setCharacterEncoding("UTF-8");
		    response.setContentType("text/html; charset=UTF-8");
		    request.getSession().removeAttribute("client");
		    request.getSession().removeAttribute("agent");
			request.getRequestDispatcher("client-form.jsp").forward(request, response);
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");

		if (action.equals("create")) {
			response.sendRedirect(request.getContextPath() + "/client-form.jsp");
		} else if (action.equals("saveClient")) {
			String CLNTNUM = request.getParameter("CLNTNUM");
			String CLNTNAME = request.getParameter("CLNTNAME");
			String BIOFDATE = request.getParameter("BIOFDATE");
			String COUNTRY = request.getParameter("COUNTRY");
			String ADDRESS = request.getParameter("ADDRESS");
			System.out.println("Date: " + BIOFDATE);

			CLNTPF clntpf = new CLNTPF(CLNTNUM, CLNTNAME, BIOFDATE, COUNTRY, ADDRESS);
			try {
				clntpfdao.addClient(clntpf);
			} catch (Exception e) {
				e.printStackTrace();
			}

			request.setAttribute("CLNTNUM", clntpf.getCLNTNUM());
			request.setAttribute("client", clntpf);
			request.getRequestDispatcher("agent-form.jsp").forward(request, response);

		} else if (action.equals("inquiry")) {
			List<CLNTPF> clients= new ArrayList<>();
			List<AGNTPF> agents = new ArrayList<AGNTPF>();
			try {
				clients = clntpfdao.getClientAll();
				agents = agntpfdao.getAgentAll();
				request.setAttribute("clients", clients);
				request.setAttribute("agents", agents);
				request.getRequestDispatcher("inquiry.jsp").forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			

		}
	}
}
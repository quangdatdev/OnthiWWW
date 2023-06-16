package com.se.servlets;

import java.io.IOException;

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
 * Servlet implementation class AGNTPFController
 */
@WebServlet("/AGNTPFController")
public class AGNTPFController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private AGNTPFDAO agntpfdao;
	private CLNTPFDAO  clntpfdao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AGNTPFController() {
    	agntpfdao = new AGNTPFDAO();
    	clntpfdao = new CLNTPFDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action.equals("saveAgent")) {
			String CLNTNUM = request.getParameter("CLNTNUM");
			String AGNTNUM = request.getParameter("AGNTNUM");
			String AGNTNAME = request.getParameter("AGNTNAME");
			String EXPIDATE = request.getParameter("EXPIDATE");
			String x = request.getParameter("CODUDATE");
			boolean CODUDATE;
			if (x!=null) {
				CODUDATE = true;
			}else {
				CODUDATE = false;
			}			
			String SERBRANCH = request.getParameter("SERBRANCH");
			AGNTPF agent = new AGNTPF(CLNTNUM, AGNTNUM, AGNTNAME, EXPIDATE, CODUDATE, SERBRANCH);
			
		try {
			agntpfdao.addAgent(agent);
			System.out.println(agent.toString());
			CLNTPF clientFound = clntpfdao.getClientNum(CLNTNUM);
			request.setAttribute("client", clientFound);
			System.out.println(clientFound.toString());
			request.setAttribute("agent", agent);
			request.getRequestDispatcher("inquiry.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		request.getRequestDispatcher("index.jsp");
		
		}
	}

}

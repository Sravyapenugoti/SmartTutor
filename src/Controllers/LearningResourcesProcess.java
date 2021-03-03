package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.EnterSubject;
import Models.Grade;
import dao.AddSubjectDao;
import dao.LearningResourcesDao;

/**
 * Servlet implementation class LearningResourcesProcess
 */
@WebServlet("/LearningResourcesProcess")
public class LearningResourcesProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	LearningResourcesDao ldao = new LearningResourcesDao();

	public LearningResourcesProcess() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	RequestDispatcher dispatcher = null;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	AddSubjectDao addSujectDAO = new AddSubjectDao();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		EnterSubject e = new EnterSubject();
		e.setSubjectName(request.getParameter("subject"));
		e.setClassID(Integer.parseInt(request.getParameter("grade")));
		if (addSujectDAO.addSubject(e) == 1) {
			request.setAttribute("submitDone", "saved successfull.!");
			dispatcher = request.getRequestDispatcher("/LearningResources.jsp");
			dispatcher.forward(request, response);
		} else if (addSujectDAO.addSubject(e) == 2) {
			request.setAttribute("submitDone","Subject  already exist.");
			request.getRequestDispatcher("LearningResources.jsp").forward(request, response);
		} else {
			request.getSession().setAttribute("submitDone", "Oops: something went wrong.");
			request.getRequestDispatcher("LearningResources.jsp").forward(request, response);
		}

	}

}

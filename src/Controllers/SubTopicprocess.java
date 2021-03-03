package Controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.SaveSubTopic;
import dao.AddSubTopicDao;

/**
 * Servlet implementation class SubTopicprocess
 */
@WebServlet("/SubTopicprocess")
public class SubTopicprocess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SubTopicprocess() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	RequestDispatcher dispatcher = null;
	AddSubTopicDao subTopicDAO = new AddSubTopicDao();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		SaveSubTopic save = new SaveSubTopic();
		save.setSubTopicName(request.getParameter("subtopic"));
		save.setTopicID(Integer.parseInt(request.getParameter("topic")));
		save.setSubTopicDescription(request.getParameter("description"));
		if (subTopicDAO.addSubTopic(save) == 1) {
			request.setAttribute("submitDone", "saved successfull.!");
			dispatcher = request.getRequestDispatcher("/SubTopic.jsp");
			dispatcher.forward(request, response);
		} else if (subTopicDAO.addSubTopic(save) == 2) {
			request.setAttribute("submitDone", "Chapter already exist.");
			request.getRequestDispatcher("SubTopic.jsp").forward(request, response);

		} else {
			request.getSession().setAttribute("submitDone", "Oops: something went wrong.");
			request.getRequestDispatcher("SubTopic.jsp").forward(request, response);
		}
	}

}

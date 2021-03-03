package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.AddChapter;
import Models.EnterSubject;
import dao.AddChapterDao;

/**
 * Servlet implementation class ChapterProcess
 */
@WebServlet("/ChapterProcess")
public class ChapterProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ChapterProcess() {
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
	AddChapterDao addChapterDAO = new AddChapterDao();
	RequestDispatcher dispatcher = null;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		AddChapter add = new AddChapter();
		add.setChapterName(request.getParameter("chapter"));
		add.setSubjectID(Integer.parseInt(request.getParameter("subject")));
		if (addChapterDAO.addChapter(add) == 1) {
			request.setAttribute("submitDone", "saved successfull.!");
			dispatcher = request.getRequestDispatcher("/chapter.jsp");

			dispatcher.forward(request, response);
			
		} else if (addChapterDAO.addChapter(add) == 2) {
			
			request.setAttribute("submitDone","Chapter already exist.");
			request.getRequestDispatcher("chapter.jsp").forward(request, response);
		} else {
			request.getSession().setAttribute("submitDone", "Oops: something went wrong.");
			request.getRequestDispatcher("chapter.jsp").forward(request, response);
		}
	}

}

package Controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Models.Chapter;
import dao.GetChapterDao;

/**
 * Servlet implementation class ViewChaptersController
 */
@WebServlet("/ViewChaptersController")
public class ViewChaptersController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewChaptersController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    RequestDispatcher dispatcher=null;
    GetChapterDao cdao=new GetChapterDao();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//HttpSession session = request.getSession();
		String subjectIDs = (String)request.getParameter("subjectID");
		if(subjectIDs != null) {
			int SubjectID =  Integer.parseInt(subjectIDs);
			List<Chapter> theList = cdao.getChapters(SubjectID);
			request.setAttribute("list", theList);
			dispatcher = request.getRequestDispatcher("ViewChapters.jsp");

			dispatcher.forward(request, response);
		}
		else
			response.sendRedirect("Login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

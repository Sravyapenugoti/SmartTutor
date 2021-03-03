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

import com.google.gson.Gson;

import Models.Subjects;
import dao.GetSubjectDao;

/**
 * Servlet implementation class ViewSubjectsController
 */
@WebServlet("/ViewSubjectsController")
public class ViewSubjectsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewSubjectsController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    RequestDispatcher dispatcher=null;
    GetSubjectDao sdao=new GetSubjectDao();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String ClassIDs = (String) session.getAttribute("ClassID");
		if(ClassIDs != null) {
			int ClassID =  Integer.parseInt(ClassIDs);
			List<Subjects> theList = sdao.getSubjects(ClassID);
			request.setAttribute("list", theList);
			dispatcher = request.getRequestDispatcher("ViewSubjects.jsp");

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

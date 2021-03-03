package Controllers;

import java.util.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.StudentsList;
import dao.StudentDetailsDao;

/**
 * Servlet implementation class StudentsDisplay
 */
@WebServlet("/StudentsDisplay")
public class StudentsDisplay extends HttpServlet {
	private static final long serialVersionUID = 1L;

	RequestDispatcher dispatcher = null;
	StudentDetailsDao studentDAO = new StudentDetailsDao();
	
	public StudentsDisplay() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<StudentsList> theList = studentDAO.getStudents();

		request.setAttribute("list", theList);

		dispatcher = request.getRequestDispatcher("/StudentDetails.jsp");

		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

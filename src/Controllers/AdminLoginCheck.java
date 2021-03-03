package Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminLoginDao;
import Models.Admin;

/**
 * Servlet implementation class AdminLoginCheck
 */
@WebServlet("/AdminLoginCheck")
public class AdminLoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminLoginCheck() {
		super();
		// TODO Auto-generated constructor stub
	}

	AdminLoginDao adminDAO = new AdminLoginDao();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		Admin login = new Admin();
		login.setUsername(request.getParameter("username"));
		login.setPassword(request.getParameter("password"));
		
		String result=adminDAO.adminLoginCheck(login);
		
		if(result.equals("true")){
			session.setAttribute("username", login.getUsername());
			response.sendRedirect("Admin.jsp");
		}
		 
		if(result.equals("false")){
			request.setAttribute("submitDone","Invalid Credentials! Try again.");
			request.getRequestDispatcher("AdminLogin.jsp").forward(request, response);
		}
	}

}

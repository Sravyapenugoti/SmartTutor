package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Models.UserLogin;
import Models.Users;
import dao.LoginDao;

/**
 * Servlet implementation class LoginCheck
 */
@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginCheck() {
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
	LoginDao loginDAO = new LoginDao();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * UserLogin ul=new UserLogin();
		 * ul.setUsername(request.getParameter("login_username"));
		 * ul.setPassword(request.getParameter("login_password")); if
		 * (loginDAO.loginCheck(ul)) { // request.setAttribute("NOTIFICATION",
		 * "Employee Saved Successfully!"); response.sendRedirect("Home.jsp"); } else {
		 * response.sendRedirect("SignUp.jsp"); }
		 */
		//PrintWriter out=response.getWriter();
		HttpSession session = request.getSession();
		UserLogin login = new UserLogin();
		login.setUsername(request.getParameter("login_username"));
		login.setPassword(request.getParameter("login_password"));

		Users result = loginDAO.loginCheck(login);

		if (result.getUserID() > 0) {
			session.setAttribute("username", login.getUsername());
			int roleID = result.getRoleID();
			session.setAttribute("roleid", roleID);
			session.setAttribute("classid", result.getClassID());
			
			
			if(roleID == 2) {
				
				response.sendRedirect("Home.jsp");
			}
		}
		else {
			request.setAttribute("submitDone","Invalid Credentials ! Please Try Again ...");
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}


	}

}

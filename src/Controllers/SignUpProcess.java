package Controllers;

import dao.SignupDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.Users;

/**
 * Servlet implementation class SignUpProcess
 */
@WebServlet("/SignUpProcess")
public class SignUpProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	SignupDao signupDAO = null;
	public SignUpProcess() {
		signupDAO = new SignupDao();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Users e = new Users();
		e.setFullName(request.getParameter("signup_name"));
		e.setUsername(request.getParameter("signup_email"));
		e.setPassword(request.getParameter("signup_password"));
		e.setClassID(request.getParameter("signup_class") == "" ? 0
				: Integer.parseInt(request.getParameter("signup_class")));
		e.setRoleID(Integer.parseInt(request.getParameter("signup_role")+""));
		e.setGender(request.getParameter("optradio"));
		e.setUserID(0);

		if (signupDAO.signUpAdd(e)) {
			// request.setAttribute("NOTIFICATION", "Employee Saved Successfully!");
			response.sendRedirect("Login.jsp");
		} else {
			response.sendRedirect("SignUp.jsp");
		}

	}

}

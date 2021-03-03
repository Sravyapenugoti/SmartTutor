package Controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.ForgotPassword;

import dao.ForgotPasswordDao;

/**
 * Servlet implementation class ForgetPasswordController
 */
@WebServlet("/ForgetPasswordController")
public class ForgetPasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ForgetPasswordController() {
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
	ForgotPasswordDao fdao = new ForgotPasswordDao();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ForgotPassword u = new ForgotPassword();
		u.setUsername(request.getParameter("username"));
		u.setPassword(request.getParameter("password"));
		if (fdao.forget(u)) {
			request.getSession().setAttribute("notification", "Updated successfully !");
			request.getRequestDispatcher("ForgetPassword.jsp").forward(request, response);
			
		} else {
			request.getSession().setAttribute("notification", "Update unsuccessfull");
			request.getRequestDispatcher("ForgetPassword.jsp").forward(request, response);
			
		}

	}
}

package Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.AddAdmin;

import dao.AddAdminDao;

/**
 * Servlet implementation class AddAdminController
 */
@WebServlet("/AddAdminController")
public class AddAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	AddAdminDao adao = new AddAdminDao();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		AddAdmin admin=new AddAdmin();
		admin.setAdminUsername(request.getParameter("username"));
		admin.setAdminPassword(request.getParameter("password"));

		if (adao.addAdmin(admin)) {
			// request.setAttribute("NOTIFICATION", "Employee Saved Successfully!");
			//request.setAttribute("submitDone","Saved Succesfully");
			//request.getRequestDispatcher("Admin.jsp").forward(request, response);
			response.sendRedirect("Login.jsp");
		} else {
			//request.setAttribute("submitDone","Saved Succesfully");
			//request.getRequestDispatcher("Admin.jsp").forward(request, response);
			response.sendRedirect("Login.jsp");
		}
	}

}

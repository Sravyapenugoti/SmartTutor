package ajax;

import java.io.IOException;
import java.util.List;
import java.util.*;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.Grade;
import Models.Subjects;
import dao.GetSubjectDao;
import dao.LearningResourcesDao;

/**
 * Servlet implementation class GetClass
 */
@WebServlet("/GetSubjects")
public class GetSubjects extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GetSubjects() {
		super();

	}

	GetSubjectDao sdao = new GetSubjectDao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int ClassID =  Integer.parseInt(request.getParameter("ClassID"));
		List<Subjects> theList = sdao.getSubjects(ClassID);
		Gson gson = new Gson();
		String json = gson.toJson(theList);

		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(json);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

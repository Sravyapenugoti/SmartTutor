package Controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.SaveTopic;
import dao.AddTopicDao;


/**
 * Servlet implementation class TopicProcess
 */
@WebServlet("/TopicProcess")
public class TopicProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TopicProcess() {
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
	RequestDispatcher dispatcher =null;
	AddTopicDao topicDAO=new AddTopicDao();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		SaveTopic save = new SaveTopic();
		save.setChapterID(Integer.parseInt(request.getParameter("chapter")));
		save.setTopicName(request.getParameter("topic"));
		save.setDescription(request.getParameter("description"));
		if (topicDAO.addTopic(save) == 1) {
			request.setAttribute("submitDone", "saved successfull.!");
			dispatcher = request.getRequestDispatcher("/Topic.jsp");
			dispatcher.forward(request, response);
		} else if (topicDAO.addTopic(save) == 2) {
			request.setAttribute("submitDone","SubTopicopic already exist.");
			request.getRequestDispatcher("Topic.jsp").forward(request, response);
		} else {
			request.getSession().setAttribute("submitDone", "Oops: something went wrong.");
			request.getRequestDispatcher("Topic.jsp").forward(request, response);
		}
	}

}

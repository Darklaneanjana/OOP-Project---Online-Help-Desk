package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Answer;
import services.AnswerServiceImpl;
import services.AnswerService;

//Update Answer servlet
@WebServlet("/UpdateAnswer")
public class UpdateAnswer extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateAnswer() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

		Answer answer = new Answer();
		String aid = request.getParameter("employeeID");	
		answer.setAid(setInt(request.getParameter("ID")));
		answer.setTitle(request.getParameter("title"));
		answer.setAuthor(setInt(request.getParameter("author")));
		answer.setContent(request.getParameter("Description"));
//		answer.setCreated_at(request.getParameter("time"));
//		answer.setUpdated_at(request.getParameter("time"));
		
		AnswerService ticketService = new AnswerServiceImpl();
		ticketService.updateAnswer(setInt(aid), answer);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/ListAnswers.jsp");
		dispatcher.forward(request, response);
	}
	private int setInt(String x) {
		// TODO Auto-generated method stub
		return Integer.parseInt(x);
	}

}

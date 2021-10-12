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
		String aid = request.getParameter("aid");	
		answer.setTitle(request.getParameter("title"));
		answer.setContent(request.getParameter("content"));
		
		AnswerService answerService = new AnswerServiceImpl();
		answerService.updateAnswer(setInt(aid), answer);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/listAnswers.jsp");
		dispatcher.forward(request, response);
	}
	private int setInt(String x) {
		// TODO Auto-generated method stub
		return Integer.parseInt(x);
	}

}

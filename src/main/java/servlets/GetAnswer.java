package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Answer;
import services.AnswerService;
import services.AnswerServiceImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/GetAnswer")
public class GetAnswer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetAnswer() {
		super();
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { 
		String aid = request.getParameter("aid");
		AnswerService answerService = new AnswerServiceImpl();
		Answer answer = answerService.getAnswerByID(Integer.parseInt(aid));

		request.setAttribute("answer", answer);
		getServletContext().getRequestDispatcher("/answer.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

response.setContentType("text/html");
		
		String aid = request.getParameter("aid");
		AnswerService answerService = new AnswerServiceImpl();
		Answer answer = answerService.getAnswerByID(Integer.parseInt(aid));

		request.setAttribute("answer", answer);
		getServletContext().getRequestDispatcher("/answer.jsp").forward(request, response);
	}

}

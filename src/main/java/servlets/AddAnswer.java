package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Answer;
import services.AnswerServiceImpl;
import services.AnswerService;


@WebServlet("/AddAnswer")
public class AddAnswer extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddAnswer() {
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
		answer.setTitle(request.getParameter("title"));
		answer.setAuthor(setInt(request.getParameter("author")));
		answer.setContent(request.getParameter("content"));

	
		AnswerService answerService = new AnswerServiceImpl();
		answerService.addAnswer(answer);

		request.setAttribute("answer", answer);
		getServletContext().getRequestDispatcher("/listAnswers.jsp").forward(request, response);
	}

	private int setInt(String x) {
		// TODO Auto-generated method stub
		return Integer.parseInt(x);
	}

}

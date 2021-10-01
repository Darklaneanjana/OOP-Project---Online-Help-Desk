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

		response.setContentType("text/html");
		
		String tid = request.getParameter("tid");
		tid = "4";
		System.out.println(tid);
		AnswerService answerService = new AnswerServiceImpl();
		Answer answer = answerService.getAnswerByID(Integer.parseInt(tid));

		request.setAttribute("answer", answer);
		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		
		String tid = request.getParameter("tid");
		tid = "4";
		System.out.println(tid);
		AnswerService answerService = new AnswerServiceImpl();
		Answer answer = answerService.getAnswerByID(Integer.parseInt(tid));

		request.setAttribute("answer", answer);
		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
	}

}

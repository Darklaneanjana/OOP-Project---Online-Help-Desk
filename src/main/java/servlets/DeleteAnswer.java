package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import services.AnswerServiceImpl;
import services.AnswerService;


//Delete answer servlet
@WebServlet("/DeleteAnswer")
public class DeleteAnswer extends HttpServlet {

	private static final long serialVersionUID = 1871871796669342804L;


	public DeleteAnswer() {
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

		String aid = request.getParameter("aid");			
		AnswerService answerService = new AnswerServiceImpl();
		answerService.removeAnswer(Integer.parseInt(aid));
		getServletContext().getRequestDispatcher("/listAnswers.jsp").forward(request, response);
	}

}

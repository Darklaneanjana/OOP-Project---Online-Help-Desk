package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



//Servlet implementation for List of Answers
@WebServlet("/ListAnswer")
public class ListAnswer extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListAnswer() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if((request.getAttribute("userType") == "analyst") || request.getAttribute("userType") == "admin") {
			response.setContentType("text/html");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/listAnswers.jsp");
			dispatcher.forward(request, response);
		}else {
		request.setAttribute("error", "You are not authorized");
	     getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
	}

}

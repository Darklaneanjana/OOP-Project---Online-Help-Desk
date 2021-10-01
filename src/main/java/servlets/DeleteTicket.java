package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import services.TicketServiceImpl;
import services.TicketService;


//Delete ticket servlet
public class DeleteTicket extends HttpServlet {

	private static final long serialVersionUID = 1871871796669342804L;


	public DeleteTicket() {
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

		String tid = request.getParameter("tid");			
		
		TicketService ticketService = new TicketServiceImpl();
		ticketService.removeTicket(Integer.parseInt(tid));

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("listTickets.jsp");
		dispatcher.forward(request, response);
	}

}

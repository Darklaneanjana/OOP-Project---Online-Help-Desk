package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Ticket;
import services.TicketServiceImpl;
import services.TicketService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/GetTicket")
public class GetTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetTicket() {
		super();
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("dddddddddddddddddddddddddddddddddddddddd");
		response.setContentType("text/html");
		
		String tid = request.getParameter("tid");
		tid = "7";
		System.out.println(tid);
		TicketService ticketService = new TicketServiceImpl();
		Ticket ticket = ticketService.getTicketByID(Integer.parseInt(tid));

		request.setAttribute("ticket", ticket);
		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		System.out.println(ticket.getTitle());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("dddddddddddddddddddddddddddddddddddddddd");
		response.setContentType("text/html");
		
		String tid = request.getParameter("tid");
		tid = "7";
		System.out.println(tid);
		TicketService ticketService = new TicketServiceImpl();
		Ticket ticket = ticketService.getTicketByID(Integer.parseInt(tid));

		request.setAttribute("ticket", ticket);
		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		System.out.println(ticket.getTitle());
	}

}

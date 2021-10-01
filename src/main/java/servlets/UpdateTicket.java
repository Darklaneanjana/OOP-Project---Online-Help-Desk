package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Ticket;
import services.TicketServiceImpl;
import services.TicketService;

//Update Ticket servlet
@WebServlet("/UpdateTicket")
public class UpdateTicket extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateTicket() {
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

		Ticket ticket = new Ticket();
		String employeeID = request.getParameter("employeeID");	
		ticket.setId(setInt(request.getParameter("ID")));
		ticket.setTitle(request.getParameter("title"));
		ticket.setPriority(setInt(request.getParameter("Priority")));
		ticket.setDescription(request.getParameter("Description"));
		ticket.setOperatCat(setInt(request.getParameter("OperationalCategory")));
		ticket.setImpact(setInt(request.getParameter("Impact")));
		
		TicketService ticketService = new TicketServiceImpl();
		ticketService.updateTicket(setInt(employeeID), ticket);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/ListTickets.jsp");
		dispatcher.forward(request, response);
	}
	private int setInt(String x) {
		// TODO Auto-generated method stub
		return Integer.parseInt(x);
	}

}

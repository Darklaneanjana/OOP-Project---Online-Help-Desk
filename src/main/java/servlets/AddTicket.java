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

@WebServlet("/AddTicket")
public class AddTicket extends HttpServlet {

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTicket() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");

        Ticket ticket = new Ticket();
        ticket.setUid(setInt(request.getParameter("uid")));
        ticket.setIssue(setInt(request.getParameter("issue")));
        
        ticket.setTitle(request.getParameter("title"));
        ticket.setPriority(setInt(request.getParameter("priority")));
        ticket.setDescription(request.getParameter("description"));
        ticket.setOperatCat(setInt(request.getParameter("OperationalCategory")));
        ticket.setImpact(setInt(request.getParameter("impact")));
        TicketService ticketService = new TicketServiceImpl();
        ticketService.addTicket(ticket);
        request.setAttribute("ticket", ticket);
        getServletContext().getRequestDispatcher("/listTickets.jsp").forward(request, response);
    }

    private int setInt(String x) {
        // TODO Auto-generated method stub
        return Integer.parseInt(x);
    }

}

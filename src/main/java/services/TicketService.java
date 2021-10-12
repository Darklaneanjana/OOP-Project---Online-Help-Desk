package services;

import model.Ticket;

import java.util.ArrayList;
import java.util.logging.Logger;

//implementation of Ticket Service .
public interface TicketService {

	/** Initialize logger */
	public static final Logger log = Logger.getLogger(TicketService.class.getName());

	//Add ticket to ticket table
	public void addTicket(Ticket ticket);

	
	
	/**
	 * Get a particular Ticket
	 * @param tid
	 * @return Ticket
	 */
	public Ticket getTicketByID(int tid);
	
	
	public ArrayList<Ticket> getTickets(String uid);
	/**
	 * Get all list of tickets
	 * @return ArrayList<Ticket>
	 */
	public ArrayList<Ticket> getTickets();

	/**
	 * Update existing ticket
	 * @param tid
	 * @param ticket
	 * @return
	 */
	public Ticket updateTicket(int tid, Ticket ticket);

	/**
	 * Remove existing Ticket
	 * @param tid
	 */
	public void removeTicket(int tid);
	
	public void assignTicket(int tid);

}

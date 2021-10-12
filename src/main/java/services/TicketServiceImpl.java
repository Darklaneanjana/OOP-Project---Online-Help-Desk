package services;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.parsers.ParserConfigurationException;
import org.xml.sax.SAXException;

import model.Ticket;
//import util.CommonConstants;
import util.DBConnect;
import util.QueryUtil;

//Implementation of Ticket Service .
public class TicketServiceImpl implements TicketService {
	int uid;
	/** Initialize logger */
	public static final Logger log = Logger.getLogger(TicketServiceImpl.class.getName());

	private static Connection connection;

	private static Statement stmt;
	private PreparedStatement preparedStatement;

	static {
		// create table or drop if exist
//		createTicketTable();
	}


//	 This method initially drop existing Ticket table in the database and recreate table structure to insert Ticket entries
	public static void createTicketTable() {
	
		try {
			 connection = DBConnect.getDBConnection();
			stmt = connection.createStatement();
			// Drop table if already exists and as per SQL query available in Query.xml
			stmt.executeUpdate(QueryUtil.queryByID("dropTable"));
			// Create new Ticket table as per SQL query available in Query.xml
			stmt.executeUpdate(QueryUtil.queryByID("createTicketTable"));

		} catch (SQLException | SAXException | IOException | ParserConfigurationException e) {
			log.log(Level.SEVERE, e.getMessage());
		}
	}


//	 Add set of Tickets for as a batch from the selected ticket List
	@Override
	public void addTicket(Ticket ticket) {

//		int tid = CommonUtil.generateIDs(getTicketIDs());

		try {
			connection = DBConnect.getDBConnection();

//			Query is available in TicketQuery.xml file and use insert_ticket key to extract value of it
			preparedStatement = connection.prepareStatement(QueryUtil.queryByID("insertTicket"));
			connection.setAutoCommit(false);

			// Generate ticket IDs
//			ticket.setId(tid);
			preparedStatement.setInt(6, ticket.getUid());
			preparedStatement.setString(1, ticket.getTitle());
			preparedStatement.setInt(3, ticket.getPriority());
			preparedStatement.setString(2, ticket.getDescription());
			preparedStatement.setInt(5, ticket.getOperatCat());
			preparedStatement.setInt(4, ticket.getImpact());
			preparedStatement.setInt(7, ticket.getIssue());
			// Add ticket
			preparedStatement.execute();
			connection.commit();

		} catch (SQLException | SAXException | IOException | ParserConfigurationException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
	}

	public ArrayList<Ticket> getTickets(String uid) {
		this.uid = Integer.parseInt(uid);
		return actionOnTicket(-1);
	}
	
	/**
	 * Ticket details can be retrieved based on the provided ticketId
	 * @param tid - Ticket details are filtered based on the ticketId
	 */
	@Override
	public Ticket getTicketByID(int tid) {

		return actionOnTicket(tid).get(0);
	}

	/**
	 * Get all list of tickets
	 * @return ArrayList<Ticket> - Array of ticket list will be return
	 */
	@Override
	public ArrayList<Ticket> getTickets() {
		return actionOnTicket(0);
	}
	
	

	/**
	 * This performs GET ticket by ID and Display all tickets
	 * 
	 * @param ticketID ID of the ticket to remove or select from the list
	 * 
	 * @return ArrayList<Ticket> Array of ticket list will be return
	 */
	private ArrayList<Ticket> actionOnTicket(int tid) {
		ArrayList<Ticket> ticketList = new ArrayList<Ticket>();
		try {
			connection = DBConnect.getDBConnection();

//			checks whether ticket ID is available
			if (tid > 0) {
				System.out.println(11111111);
				/*
				 * Get ticket by ID query will be retrieved from TicketQuery.xml
				 */
				preparedStatement = connection.prepareStatement(QueryUtil.queryByID("ticketById"));
				preparedStatement.setInt(1, tid);
			}

//			If ticket ID is not provided for get ticket option it display all tickets
			else if(tid==(-1)) {
				System.out.println(2222222);
				preparedStatement = connection.prepareStatement(QueryUtil.queryByID("allTicketsByUid"));
				System.out.println(uid);
				preparedStatement.setInt(1, uid);
			}
			else {
				System.out.println(33333333);
				preparedStatement = connection.prepareStatement(QueryUtil.queryByID("allTickets"));
			}
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Ticket ticket = new Ticket();
				ticket.setId(resultSet.getInt(1));
				ticket.setTitle(resultSet.getString(2));
				ticket.setPriority(resultSet.getInt(5));
				ticket.setDescription(resultSet.getString(3));
				ticket.setOperatCat(resultSet.getInt(10));
				ticket.setImpact(resultSet.getInt(8));
				ticket.setIssue(resultSet.getInt(13));
				ticketList.add(ticket);
				
			}

		} catch (SQLException | SAXException | IOException | ParserConfigurationException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return ticketList;
	}

	/**
	 * Get the updated ticket
	 * @param tid ID of the ticket to remove or select from the list
	 */
	@Override
	public Ticket updateTicket(int tid, Ticket ticket) {

//		checks whether ticket ID is valid
		if (tid > 0) {
			/*
			 * Update ticket query will be retrieved from TicketQuery.xml
			 */
			try {
				connection = DBConnect.getDBConnection();
				preparedStatement = connection.prepareStatement(QueryUtil.queryByID("updateTicket"));
				preparedStatement.setInt(7, tid);
				preparedStatement.setString(1, ticket.getTitle());
				preparedStatement.setInt(3, ticket.getPriority());
				preparedStatement.setString(2, ticket.getDescription());
				preparedStatement.setInt(5, ticket.getOperatCat());
				preparedStatement.setInt(4, ticket.getImpact());
				preparedStatement.setInt(6, ticket.getIssue());
				preparedStatement.executeUpdate();

			} catch (SQLException | SAXException | IOException | ParserConfigurationException e) {
				log.log(Level.SEVERE, e.getMessage());
			} finally {
//				Close prepared statement and database connectivity
				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
		}
		// Get the updated ticket
		return getTicketByID(tid);
	}


	/**
	 * delete an ticket based on the provided ID
	 * @param tid - Delete ticket according to the filtered ticket details
	 */
	@Override
	public void removeTicket(int tid) {

		// Before deleting check whether ticket ID is available
		if (tid > 0) {

//			Remove ticket query will be retrieved from TicketQuery.xml
			try {
				connection = DBConnect.getDBConnection();
				preparedStatement = connection.prepareStatement(QueryUtil.queryByID("removeTicket"));
				preparedStatement.setInt(1, tid);
				preparedStatement.executeUpdate();
			} catch (SQLException | SAXException | IOException | ParserConfigurationException e) {
				log.log(Level.SEVERE, e.getMessage());
			} finally {

//				 Close prepared statement and database connectivity at the end of transaction
				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
		}
	}
	
	/**
	 * delete an ticket based on the provided ID
	 * @param tid - Delete ticket according to the filtered ticket details
	 */
	@Override
	public void assignTicket(int tid) {

		// Before deleting check whether ticket ID is available
		if (tid > 0) {

//			Remove ticket query will be retrieved from TicketQuery.xml
			try {
				connection = DBConnect.getDBConnection();
				preparedStatement = connection.prepareStatement(QueryUtil.queryByID("assignTicket"));
				preparedStatement.setInt(1, tid);
				preparedStatement.executeUpdate();
			} catch (SQLException | SAXException | IOException | ParserConfigurationException e) {
				log.log(Level.SEVERE, e.getMessage());
			} finally {

//				 Close prepared statement and database connectivity at the end of transaction
				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
		}
	}
}

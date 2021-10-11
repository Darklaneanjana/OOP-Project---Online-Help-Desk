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

import model.Answer;
//import util.CommonConstants;
import util.DBConnect;
import util.QueryUtil;

//Implementation of Answer Service .
public class AnswerServiceImpl implements AnswerService {

	/** Initialize logger */
	public static final Logger log = Logger.getLogger(AnswerServiceImpl.class.getName());

	private static Connection connection;

	private static Statement stmt;
	private PreparedStatement preparedStatement;

	static {
		// create table or drop if exist
//		createAnswerTable();
	}


//	 This method initially drop existing Answer table in the database and recreate table structure to insert Answer entries
	public static void createAnswerTable() {
	
		try {
			 connection = DBConnect.getDBConnection();
			stmt = connection.createStatement();
			// Drop table if already exists and as per SQL query available in Query.xml
			stmt.executeUpdate(QueryUtil.queryByID("dropTable"));
			// Create new Answer table as per SQL query available in Query.xml
			stmt.executeUpdate(QueryUtil.queryByID("createAnswerTable"));

		} catch (SQLException | SAXException | IOException | ParserConfigurationException e) {
			log.log(Level.SEVERE, e.getMessage());
		}
	}


//	 Add set of Answers for as a batch from the selected answer List
	@Override
	public void addAnswer(Answer answer) {

//		int aid = CommonUtil.generateIDs(getAnswerIDs());

		try {
			connection = DBConnect.getDBConnection();

//			Query is available in AnswerQuery.xml file and use insert_answer key to extract value of it
			preparedStatement = connection.prepareStatement(QueryUtil.queryByID("insertAnswer"));
			connection.setAutoCommit(false);

			preparedStatement.setInt(6, 1);
			preparedStatement.setString(1, answer.getTitle());
			preparedStatement.setInt(3, answer.getAuthor());
			preparedStatement.setString(2, answer.getContent());
			preparedStatement.setTimestamp(5, answer.getCreated_at());
			preparedStatement.setTimestamp(4, answer.getUpdated_at());

			// Add answer
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

	
	/**
	 * Answer details can be retrieved based on the provided answerId
	 * @param aid - Answer details are filtered based on the answerId
	 */
	@Override
	public Answer getAnswerByID(int aid) {

		return actionOnAnswer(aid).get(0);
	}

	/**
	 * Get all list of answers
	 * @return ArrayList<Answer> - Array of answer list will be return
	 */
	@Override
	public ArrayList<Answer> getAnswers() {
		return actionOnAnswer(0);
	}

	/**
	 * This performs GET answer by ID and Display all answers
	 * 
	 * @param answerID ID of the answer to remove or select from the list
	 * 
	 * @return ArrayList<Answer> Array of answer list will be return
	 */
	private ArrayList<Answer> actionOnAnswer(int aid) {
		ArrayList<Answer> answerList = new ArrayList<Answer>();
		try {
			connection = DBConnect.getDBConnection();

//			checks whether answer ID is available
			if (aid > 0) {
				/*
				 * Get answer by ID query will be retrieved from AnswerQuery.xml
				 */
				preparedStatement = connection.prepareStatement(QueryUtil.queryByID("answerById"));
				preparedStatement.setInt(1, aid);
			}

//			If answer ID is not provided for get answer option it display all answers
			else {
				preparedStatement = connection.prepareStatement(QueryUtil.queryByID("allAnswers"));
			}
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Answer answer = new Answer();
				answer.setAid(resultSet.getInt(1));
				answer.setAuthor(resultSet.getInt(2));
				answer.setTitle(resultSet.getString(3));
				answer.setCreated_at(resultSet.getTimestamp(4));
				answer.setUpdated_at(resultSet.getTimestamp(5));
				answer.setContent(resultSet.getString(6));
				
				
				answerList.add(answer);
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
		return answerList;
	}

	/**
	 * Get the updated answer
	 * @param aid ID of the answer to remove or select from the list
	 */
	@Override
	public Answer updateAnswer(int aid, Answer answer) {

//		checks whether answer ID is valid
		if (aid > 0) {
			/*
			 * Update answer query will be retrieved from AnswerQuery.xml
			 */
			try {
				connection = DBConnect.getDBConnection();
				preparedStatement = connection.prepareStatement(QueryUtil.queryByID("updateAnswer"));
				preparedStatement.setString(1, answer.getTitle());
				preparedStatement.setInt(2, answer.getAuthor());
				preparedStatement.setString(3, answer.getContent());
				preparedStatement.setTimestamp(4, answer.getCreated_at());
				preparedStatement.setTimestamp(5, answer.getUpdated_at());
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
		// Get the updated answer
		return getAnswerByID(aid);
	}


	/**
	 * delete an answer based on the provided ID
	 * @param aid - Delete answer according to the filtered answer details
	 */
	@Override
	public void removeAnswer(int aid) {

		// Before deleting check whether answer ID is available
		if (aid > 0) {

//			Remove answer query will be retrieved from AnswerQuery.xml
			try {
				connection = DBConnect.getDBConnection();
				preparedStatement = connection.prepareStatement(QueryUtil.queryByID("removeAnswer"));
				preparedStatement.setInt(1, aid);
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

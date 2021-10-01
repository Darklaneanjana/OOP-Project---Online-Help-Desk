
package services;

import model.Answer;

import java.util.ArrayList;
import java.util.logging.Logger;

//implementation of Answer Service .
public interface AnswerService {

	/** Initialize logger */
	public static final Logger log = Logger.getLogger(AnswerService.class.getName());

	//Add answer to answer table
	public void addAnswer(Answer answer);

	/**
	 * Get a particular Answer
	 * @param aid
	 * @return Answer
	 */
	public Answer getAnswerByID(int tid);

	/**
	 * Get all list of answers
	 * @return ArrayList<Answer>
	 */
	public ArrayList<Answer> getAnswers();

	/**
	 * Update existing answer
	 * @param aid
	 * @param answer
	 * @return
	 */
	public Answer updateAnswer(int aid, Answer answer);

	/**
	 * Remove existing Answer
	 * @param aid
	 */
	public void removeAnswer(int aid);

}

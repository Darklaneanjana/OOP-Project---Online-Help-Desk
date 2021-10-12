package model;

//Java Beans
import java.io.Serializable;

//Ticket model class
public class Ticket implements Serializable {

	private static final long serialVersionUID = -8724714296773581393L;
	private int tid;
	private int uid;
	private int issue;
	private String title;
	private int priority;
	private int impact;
	private int operatCat;
	private String description;
	
	public Ticket() {

	}
	
	/**
	 * @param tid
	 * @param title
	 * @param priority
	 * @param impact
	 * @param operatCat
	 * @param description
	 */
	public Ticket(int tid, String title, int priority, int impact, int operatCat, String description) {
//		super();
		this.tid = tid;
		this.title = title;
		this.priority = priority;
		this.impact = impact;
		this.operatCat = operatCat;
		this.description = description;
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return tid;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int tid) {
		this.tid = tid;
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the priority
	 */
	public int getPriority() {
		return priority;
	}

	/**
	 * @param priority the priority to set
	 */
	public void setPriority(int priority) {
		this.priority = priority;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the operatCat
	 */
	public int getOperatCat() {
		return operatCat;
	}

	/**
	 * @param operatCat the operatCat to set
	 */
	public void setOperatCat(int operatCat) {
		this.operatCat = operatCat;
	}

	/**
	 * @return the impact
	 */
	public int getImpact() {
		return impact;
	}

	/**
	 * @param impact the impact to set
	 */
	public void setImpact(int impact) {
		this.impact = impact;
	}

	@Override
	public String toString() {
		return "ID = " + tid + "\n" + "Title = " + title + "\n" + "Priority = " + priority + "\n" + "Impact = " + impact
				+ "\n" + "OperationalCategory = " + operatCat + "\n" + "Description = " + description;
	}

	public int getIssue() {
		return issue;
	}

	public void setIssue(int issue) {
		this.issue = issue;
	}

	/**
	 * @return the uid
	 */
	public int getUid() {
		return uid;
	}

	/**
	 * @param uid the uid to set
	 */
	public void setUid(int uid) {
		this.uid = uid;
	}
}

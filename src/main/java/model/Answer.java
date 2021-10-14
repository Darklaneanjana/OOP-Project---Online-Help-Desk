package model;

//Java Beans
import java.io.Serializable;
import java.sql.Timestamp;


public class Answer implements Serializable{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -7385482099062975347L;
	private int aid;
	private int author;
	private String title;
	private String content;
	private Timestamp created_at;
	private Timestamp updated_at;

public Answer() {
		
	}
	public Answer(int aid, int author, String title, String content, Timestamp created_at, Timestamp updated_at) {
		this.aid = aid;
		this.author = author;
		this.title = title;
		this.content = content;
		this.created_at = created_at;
		this.updated_at = updated_at;
	}
	
	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public int getAuthor() {
		return author;
	}

	public void setAuthor(int author) {
		this.author = author;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Timestamp created_at) {
		this.created_at = created_at;
	}

	public Timestamp getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(Timestamp updated_at) {
		this.updated_at = updated_at;
	}

	public String toString() {
		return "Answer [aid=" + aid + ", author=" + author + ", title=" + title + ", content=" + content
				+ ", created_at=" + created_at + ", updated_at=" + updated_at + "]";
	}

}
	

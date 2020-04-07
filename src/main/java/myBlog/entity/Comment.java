package myBlog.entity;

import java.sql.Timestamp;

public class Comment {
	private int id;
	private int articleId;
	private Timestamp commentTime;
	private User user;
	private String content;
	private String ip;
	private int state;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public Timestamp getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(Timestamp commentTime) {
		this.commentTime = commentTime;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Comment(int id, int articleId, Timestamp commentTime, User user, String content, String ip, int state) {
		super();
		this.id = id;
		this.articleId = articleId;
		this.commentTime = commentTime;
		this.user = user;
		this.content = content;
		this.ip = ip;
		this.state = state;
	}
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
}

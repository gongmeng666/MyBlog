package myBlog.entity;

import java.sql.Timestamp;

public class Article {
	private int id;
	private String title;
	private String content;
	private Timestamp createTime;
	private Timestamp updateTime;
	private User user;
	private int categoryId;
	private int clicks;
	private int commentTimes;
	private int state;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public Timestamp getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}
	public Timestamp getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getClicks() {
		return clicks;
	}
	public void setClicks(int clicks) {
		this.clicks = clicks;
	}
	public int getCommentTimes() {
		return commentTimes;
	}
	public void setCommentTimes(int commentTimes) {
		this.commentTimes = commentTimes;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
	
	public String getSubContent() {
		if(content.length()>180) {
			return content.substring(0,180)+"...";
		}else{
			return content;
		}
	}
}

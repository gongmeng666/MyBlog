package myBlog.entity;

public class Album {
	private int id;
	private User user;
	private String name;
	private String description;
	private String cover;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	public Album(int id, User user, String name, String description, String cover) {
		super();
		this.id = id;
		this.user = user;
		this.name = name;
		this.description = description;
		this.cover = cover;
	}
	public Album() {
		super();
		// TODO Auto-generated constructor stub
	}
}

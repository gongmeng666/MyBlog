package myBlog.entity;

public class Category {
	private int id;
	private String name;
	private Integer userId;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Category(int id, String name, Integer userId) {
		super();
		this.id = id;
		this.name = name;
		this.userId = userId;
	}
	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}
}

package myBlog.entity;

public class Photo {
	private int id;
	private User user;
	private int albumId;
	private String title;
	private String description;
	private String filePath;
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
	public int getAlbumId() {
		return albumId;
	}
	public void setAlbumId(int albumId) {
		this.albumId = albumId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public Photo(int id, User user, int albumId, String title, String description, String filePath) {
		super();
		this.id = id;
		this.user = user;
		this.albumId = albumId;
		this.title = title;
		this.description = description;
		this.filePath = filePath;
	}
	public Photo() {
		super();
		// TODO Auto-generated constructor stub
	}
}

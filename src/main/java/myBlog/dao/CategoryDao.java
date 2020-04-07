package myBlog.dao;

import java.util.List;

import myBlog.entity.Category;

public interface CategoryDao {
	List<Category> getCatesByUserId(int userId);
}	

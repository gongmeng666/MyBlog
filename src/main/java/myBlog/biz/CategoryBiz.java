package myBlog.biz;

import java.util.List;

import myBlog.entity.Category;

public interface CategoryBiz {
	List<Category> getCatesByUserId(int userId);
}

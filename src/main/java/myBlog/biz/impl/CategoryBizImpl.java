package myBlog.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myBlog.biz.CategoryBiz;
import myBlog.dao.CategoryDao;
import myBlog.entity.Category;

@Service
public class CategoryBizImpl implements CategoryBiz {
	@Autowired
	private CategoryDao catedb;
		
	@Override
	public List<Category> getCatesByUserId(int userId) {
		return catedb.getCatesByUserId(userId);
	}

}

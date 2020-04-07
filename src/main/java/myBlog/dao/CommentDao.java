package myBlog.dao;

import java.util.List;

import myBlog.entity.Comment;

public interface CommentDao {
	List<Comment> fetchByAid(int aid);
	void add(Comment c);
}

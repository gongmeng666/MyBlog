package myBlog.biz;

import java.util.List;

import myBlog.entity.Comment;

public interface CommentBiz {
	List<Comment> fetchByAid(int aid);
	void add(Comment c);
}

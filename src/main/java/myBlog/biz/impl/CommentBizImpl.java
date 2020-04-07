package myBlog.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myBlog.biz.CommentBiz;
import myBlog.dao.CommentDao;
import myBlog.entity.Comment;
@Service
public class CommentBizImpl implements CommentBiz {
	@Autowired
	private CommentDao commentdb;
	@Override
	public List<Comment> fetchByAid(int aid) {
		return commentdb.fetchByAid(aid);
	}
	@Override
	public void add(Comment c) {
	commentdb.add(c);
		
	}

}

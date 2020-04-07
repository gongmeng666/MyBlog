package myBlog.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myBlog.biz.UserBiz;
import myBlog.dao.UserDao;
import myBlog.entity.User;

@Service
public class UserBizImpl implements UserBiz {
	@Autowired
	private UserDao userdb;
	
	@Override
	public List<User> getHotUsers(int topN) {
		return userdb.getHotUsers(topN);
	}

	@Override
	public User checkLogin(String username, String pwd) {
		return userdb.checkLogin(username, pwd);
	}

	@Override
	public User fetchById(int userId) {
		return userdb.fetchById(userId);
	}

}

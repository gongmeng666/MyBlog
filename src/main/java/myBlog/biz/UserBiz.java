package myBlog.biz;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import myBlog.entity.User;

public interface UserBiz {
	List<User> getHotUsers(int topN);
	User checkLogin(@Param("username")String username,@Param("pwd")String pwd);
	User fetchById(int userId);
}

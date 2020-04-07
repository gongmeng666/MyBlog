package myBlog.dao;

import java.util.List;

import myBlog.entity.Photo;

public interface PhotoDao {
	List<Photo> fetchByAid(int aid);
	Photo fetchByPid(int pid);
}

package myBlog.biz;

import java.util.List;

import myBlog.entity.Photo;

public interface PhotoBiz {
	List<Photo> fetchByAid(int aid);
	Photo fetchByPid(int pid);
}

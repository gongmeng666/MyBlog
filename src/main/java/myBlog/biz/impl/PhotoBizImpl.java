package myBlog.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myBlog.biz.PhotoBiz;
import myBlog.dao.PhotoDao;
import myBlog.entity.Photo;
@Service
public class PhotoBizImpl implements PhotoBiz {
	@Autowired
	private PhotoDao photodb;

	@Override
	public List<Photo> fetchByAid(int aid) {
		return photodb.fetchByAid(aid);
	}

	@Override
	public Photo fetchByPid(int pid) {
		return photodb.fetchByPid(pid);
	}
}

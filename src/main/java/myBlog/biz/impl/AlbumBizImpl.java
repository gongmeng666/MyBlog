package myBlog.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myBlog.biz.AlbumBiz;
import myBlog.dao.AlbumDao;
import myBlog.entity.Album;

@Service
public class AlbumBizImpl implements AlbumBiz {

		@Autowired
		private AlbumDao albumdb;

		@Override
		public List<Album> fetchByUid(int blogerId) {
			return albumdb.fetchByUid(blogerId);
		}

		@Override
		public Album fetchByAid(int aid) {
			return albumdb.fetchByAid(aid);
		}
		
}

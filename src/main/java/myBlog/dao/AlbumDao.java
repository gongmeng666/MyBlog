package myBlog.dao;

import java.util.List;

import myBlog.entity.Album;

public interface AlbumDao {
	List<Album> fetchByUid(int blogerId);
	Album fetchByAid(int aid);
	
}

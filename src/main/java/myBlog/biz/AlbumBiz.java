package myBlog.biz;

import java.util.List;

import myBlog.entity.Album;

public interface AlbumBiz {
	List<Album> fetchByUid(int blogerId);

		Album fetchByAid(int aid);
}

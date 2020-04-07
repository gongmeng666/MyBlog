package myBlog.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import myBlog.entity.Article;

public interface ArticleDao {
	List<Article> getArtclesOrderByTime(int topN);
	List<Article> getArtclesOrderClicks(@Param("topN")int topN,@Param("userId")int userId);
	int fetchArticlesRows(@Param("userId")int userId,@Param("cateId")int cateId,@Param("title")String title);
	List<Article> getArticles(@Param("userId")int userId,@Param("cateId")Integer cateId,@Param("title")String title,@Param("skips")Integer skips,@Param("pageSize")int pageSize);
	Article fetchById(int aid);
	List<Article> getArticlesManage(@Param("userId")int userId,@Param("title")String title,@Param("cateId")int cateId);
	void add(Article article);
	void edit(Article article);
}

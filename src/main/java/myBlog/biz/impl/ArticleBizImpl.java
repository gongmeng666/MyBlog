package myBlog.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myBlog.biz.ArticleBiz;
import myBlog.dao.ArticleDao;
import myBlog.entity.Article;

@Service
public class ArticleBizImpl implements  ArticleBiz {
	@Autowired
	private ArticleDao articledb;
	
	@Override
	public List<Article> getArtclesOrderByTime(int topN) {
		return articledb.getArtclesOrderByTime(topN);
	}

	@Override
	public List<Article> getArtclesOrderClicks(int topN, int userId) {
		return articledb.getArtclesOrderClicks(topN, userId);
	}

	@Override
	public int fetchArticlesRows(int userId, int cateId, String title) {
		return articledb.fetchArticlesRows(userId, cateId, title);
	}

	@Override
	public List<Article> getArticles(int userId, Integer cateId, String title, Integer page, int pageSize) {
	return articledb.getArticles(userId, cateId, title, 
			(page-1)*pageSize, pageSize);
	}

	@Override
	public Article fetchById(int aid) {
		return articledb.fetchById(aid);
	}

	

	@Override
	public List<Article> getArticlesManage(int userId, String title, int cateId) {
		return articledb.getArticlesManage(userId, title, cateId);
	}

	@Override
	public void add(Article article) {
		articledb.add(article);
		
	}

	@Override
	public void edit(Article article) {
		// TODO Auto-generated method stub
		articledb.edit(article);
	}

}

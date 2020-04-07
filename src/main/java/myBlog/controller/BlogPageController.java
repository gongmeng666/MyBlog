package myBlog.controller;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import myBlog.biz.AlbumBiz;
import myBlog.biz.ArticleBiz;
import myBlog.biz.CategoryBiz;
import myBlog.biz.CommentBiz;
import myBlog.biz.PhotoBiz;
import myBlog.biz.UserBiz;
import myBlog.entity.Comment;
import myBlog.entity.User;

@Controller
@RequestMapping("/blog")
public class BlogPageController {
	@Autowired
	private ArticleBiz articlebiz;
	
	@Autowired
	private UserBiz userbiz;
	
	@Autowired
	private CategoryBiz categorybiz;
	
	@Autowired
	private CommentBiz commentbiz;
	
	@Autowired
	private AlbumBiz albumbiz;
	
	@Autowired
	private PhotoBiz photobiz;
	
	@RequestMapping("/header")
	public String header(int userId,Model model) {
		model.addAttribute("bloger",userbiz.fetchById(userId));
		return "shared/blog-header";
	}
	
	@RequestMapping("/sidebar")
	public String sidebar(int userId,Model model) {
		model.addAttribute("bloger",userbiz.fetchById(userId));
		model.addAttribute("cates",categorybiz.getCatesByUserId(userId));
		model.addAttribute("hotArticles",articlebiz.getArtclesOrderClicks(4, userId));
		return "shared/blog-sidebar";
	}
	
	@RequestMapping("/articles")
	public String articles(int userId,Integer cateId,Integer page,Model model) {

		final int pageSize=3;
		cateId=cateId==null?0:cateId;
		page=page==null?1:page;
		int totalRows=articlebiz.fetchArticlesRows(userId, cateId, null);

		model.addAttribute("list",articlebiz.getArticles(userId, cateId, null, page, pageSize));
	
		model.addAttribute("totalRows",totalRows);
		model.addAttribute("page",page);
		model.addAttribute("totalPages",totalRows%pageSize==0?totalRows/pageSize:totalRows/pageSize+1);
		return "blog-articles";
	}
	
	@RequestMapping("/detail")
	public String detail(int userId,int aid,Model model) {
		model.addAttribute("a",articlebiz.fetchById(aid));
		model.addAttribute("commentList",commentbiz.fetchByAid(aid));
		return "blog-detail";
	}
	
	@RequestMapping("/saveComment")
	public String saveComment(Comment c,HttpServletRequest req,int topicUserId) {
		c.setCommentTime(new Timestamp(System.currentTimeMillis()));
		c.setIp(req.getRemoteAddr());
		c.setState(1);
		c.setUser((User)req.getSession().getAttribute("loginUser"));
		commentbiz.add(c);
		return "redirect:/blog/detail?aid="+c.getArticleId()+"&userId="+topicUserId;
	}
	 
	@RequestMapping("/albumList")
	public String albumList(int userId,Model model) {
		model.addAttribute("bloger",userbiz.fetchById(userId));
		model.addAttribute("albumlist",albumbiz.fetchByUid(userId));
		return "blog-albumList";
	}
	
	@RequestMapping("/album")
	public String album(int userId,int aid,Model model) {
		model.addAttribute("album",albumbiz.fetchByAid(aid));
		model.addAttribute("photos", photobiz.fetchByAid(aid));
		return "blog-album";
	}
	
	@RequestMapping("/photo")
	public String photo(int userId,int pid,Model model) {
		model.addAttribute("photo",photobiz.fetchByPid(pid));
		return "blog-photo";
	}
}

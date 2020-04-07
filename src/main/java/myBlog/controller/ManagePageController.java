package myBlog.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Timestamp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import myBlog.biz.AlbumBiz;
import myBlog.biz.ArticleBiz;
import myBlog.biz.CategoryBiz;
import myBlog.biz.PhotoBiz;
import myBlog.biz.UserBiz;
import myBlog.entity.Article;
import myBlog.entity.User;

@Controller
@RequestMapping("/manage")
public class ManagePageController {
	@Autowired
	private ArticleBiz articlebiz;
	
	@Autowired
	private UserBiz userbiz;
	
	@Autowired
	private CategoryBiz categorybiz;
	
	@Autowired
	private AlbumBiz albumbiz;
	
	@Autowired
	private PhotoBiz photobiz;
	
	
	@RequestMapping("/index")
	public String index() {
		return "manage-index";
	}
	 
	@RequestMapping("/articleList")
	public String articleList(Model model,HttpSession sess,String title,Integer cateId) {
		cateId=cateId==null?0:cateId;
		int userId=((User)sess.getAttribute("loginUser")).getId();
		model.addAttribute("cateList",categorybiz.getCatesByUserId(userId));
		model.addAttribute("articleList",articlebiz.getArticlesManage(userId, title, cateId));
		return "manage-articleList";
	}
	
	@RequestMapping("edit")
	public String edit(Integer aid,HttpSession sess,Model model) {
		int userId=((User)sess.getAttribute("loginUser")).getId();
		model.addAttribute("cateList",categorybiz.getCatesByUserId(userId));
		if(aid!=null) {
			model.addAttribute("article",articlebiz.fetchById(aid));
		}
		return "manage-edit";
	}
	
	@RequestMapping("saveArticle")
	public String saveArticle(Article article,Model model,HttpSession session) throws UnsupportedEncodingException {
		Timestamp now=new Timestamp(System.currentTimeMillis());
		if(article.getId()<=0) {
			//发表博文
			article.setClicks(0);
			article.setCommentTimes(0);
			article.setCreateTime(now);
			article.setUpdateTime(now);
			article.setUser((User)session.getAttribute("loginUser"));
			articlebiz.add(article);
		}else {
			//修改博文
			Article old=articlebiz.fetchById(article.getId());
			article.setClicks(old.getClicks());
			article.setCommentTimes(old.getCommentTimes());
			article.setCreateTime(old.getCreateTime());
			article.setUpdateTime(now);
			article.setUser((User)session.getAttribute("loginUser"));
			articlebiz.edit(article);
		}
		return "redirect:/manage/articleList?title="+URLEncoder.encode(article.getTitle(),"UTF-8");
	}
}

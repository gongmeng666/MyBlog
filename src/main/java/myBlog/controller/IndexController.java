package myBlog.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import myBlog.biz.ArticleBiz;
import myBlog.biz.UserBiz;
import myBlog.entity.User;

@Controller
public class IndexController {
	@Autowired
	private ArticleBiz actriclebiz;
	
	@Autowired
	private UserBiz userbiz;
	
	@RequestMapping("index")
	public String index(Model model) {
		model.addAttribute("newActricles",actriclebiz.getArtclesOrderByTime(9));
		model.addAttribute("hotUsers", userbiz.getHotUsers(9));
		model.addAttribute("hotArticles", actriclebiz.getArtclesOrderClicks(4, 0));
		return "index";
	}
	@RequestMapping("/login")
	public String login(Model model,String username,String pwd,HttpSession session) {
		User loginUser=userbiz.checkLogin(username, pwd);
		if(loginUser!=null) {
			session.setAttribute("loginUser", loginUser);
			return "redirect:/index";
		}else {
			model.addAttribute("error","用户名或密码错误");
			model.addAttribute("newActricles",actriclebiz.getArtclesOrderByTime(9));
			model.addAttribute("hotUsers", userbiz.getHotUsers(9));
			model.addAttribute("hotArticles", actriclebiz.getArtclesOrderClicks(4, 0));
			return "index";
		}
		}
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/index";
	}
}

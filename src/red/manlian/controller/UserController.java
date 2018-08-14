package red.manlian.controller;

import javax.servlet.http.HttpSession;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import red.manlian.pojo.Sys_user;
import red.manlian.pojo.User;
import red.manlian.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	//网站管理员登录
	@RequestMapping(value="/success")
	public ModelAndView login(Sys_user user){
		
		String uid = userService.checkUser(user);
	
	
		if(uid==null){
			return null;
		}else{
			ModelAndView mav = new ModelAndView();
			mav.addObject("user", uid);
			mav.setViewName("/jsp/index.jsp");
			return mav;
			
		}
	
	
	}
}

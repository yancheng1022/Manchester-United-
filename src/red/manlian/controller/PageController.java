package red.manlian.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class PageController {
	@RequestMapping("/manmiwangEnd")
	public String showEndPage(){
		
		return "/jsp/login.jsp";
	}
	
	@RequestMapping("/")
	public String indexPage(){
		
		return "index.jsp";
	}


}

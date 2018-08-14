package red.manlian.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import red.manlian.pojo.QueryVo;
import red.manlian.pojo.Range;
import red.manlian.service.BackEndService;
import red.manlian.service.UserService;

@Controller
public class BackEndController {

	@Autowired 
	private BackEndService backEndService;
	
	@RequestMapping("/index")
	public ModelAndView findRange(){
		
		ModelAndView mav = new ModelAndView();
		
		List<Range> ranges =  backEndService.findRange();
		mav.addObject("ranges", ranges);
		mav.setViewName("/jsp/index.jsp");
		return mav;
		
	}
	@RequestMapping("/change_range")
	public ModelAndView changeRange(QueryVo vo){
		List<Range> ranges;
		ModelAndView mav = new ModelAndView();
		ranges = vo.getRangeList();		
		backEndService.changeRange(ranges);
		
		mav.setViewName("/jsp/index.jsp");
		return mav;
		
	}
	
	
	
}

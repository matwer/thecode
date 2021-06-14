package com.shad.thecode;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping(value="/processForm", method=RequestMethod.POST)
	public String main(@RequestParam(value="guess") String guess) {
		
		if (guess.equals("bushido")) {
			return "redirect:/code"; 
		} 
		
		return "redirect:/incorrectCode";
	}
	
	@RequestMapping("/incorrectCode")
	public String flashMessages(RedirectAttributes redirectAtt) {
		redirectAtt.addFlashAttribute("error", "You must train harder!");
		return "redirect:/";
	}
	
	@RequestMapping("/code")
	public String code() {
		return "code.jsp";
	}

}

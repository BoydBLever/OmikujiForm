package com.boydlever.omikujiform;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
//@RequestMapping("/omikuji")
public class MainController {

	@RequestMapping("/omikuji")
	public String index() {
		return "index.jsp";
	}
	@RequestMapping(value="/processForm", method=RequestMethod.POST)
	public String form(
		@RequestParam(value="numberPicker") Integer numberPicker,
		@RequestParam(value="city") String city,
		@RequestParam(value="person") String person,
		@RequestParam(value="hobby") String hobby,
		@RequestParam(value="livingThing") String livingThing,
		@RequestParam(value="compliment") String compliment,
		HttpSession session){
		
		session.setAttribute("numberPicker", numberPicker);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("livingThing", livingThing);
		session.setAttribute("compliment", compliment);
		return "redirect:/omikuji/show";
	}
	@RequestMapping("/omikuji/show")
	public String show(HttpSession session, Model model) {
		model.addAttribute("numberPicker", session.getAttribute("numberPicker"));
		model.addAttribute("city", session.getAttribute("city"));
		model.addAttribute("person", session.getAttribute("person"));
		model.addAttribute("hobby", session.getAttribute("hobby"));
		model.addAttribute("livingThing", session.getAttribute("livingThing"));
		model.addAttribute("compliment", session.getAttribute("compliment"));
		return "show.jsp";
	}
}

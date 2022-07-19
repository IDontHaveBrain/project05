package toto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SelfckController {
	//http://localhost:7080/project05/SelfCk.do
	@RequestMapping("SelfCk.do")
	public String List(Model d) {
		return "WEB-INF\\views\\SelfCK\\research.jsp";
	}
	
	//http://localhost:7080/project05/SelfCkAns.do
	@RequestMapping("SelfCkAns.do")
	public String List02(Model d) {
		return "WEB-INF\\views\\SelfCK\\researchAns.jsp"; 
	}

}

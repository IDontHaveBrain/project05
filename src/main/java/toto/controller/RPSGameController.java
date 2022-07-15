package toto.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import toto.service.RPSGameService;

@Controller
public class RPSGameController {
	@Autowired(required=false)
	private RPSGameService service;
	
	double odds = 1.95;
			
	@RequestMapping("rpsgame.do")
	public String RPSGame(HttpSession session, Model d) {
		// http://localhost:7080/project05/rpsgame.do
		session.setAttribute("id", "asdasd123");
		session.setMaxInactiveInterval(60*10);
		String curId = (String)session.getAttribute("id");
		d.addAttribute("curPoint", service.getCurPoint(curId));
		d.addAttribute("odds", odds);
		return "WEB-INF\\views\\game\\rpsgame.jsp";
	}
	
}

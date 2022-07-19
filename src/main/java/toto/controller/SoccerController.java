package toto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import toto.service.SoccerService;
import toto.vo.Soccer;

public class SoccerController {
	@Autowired(required=false)
	private SoccerService service;
	
	// http://localhost:7080/project05/soccer.do
		@RequestMapping("soccer.do")
		public String getSoccerList(Soccer sch, Model d) {	
			d.addAttribute("soccerList", service.getSoccerList(sch));
			return "WEB-INF\\views\\game\\soccer.jsp";
		
		}
		
	
		
	
}

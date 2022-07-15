package toto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import toto.service.OneOneinqService;
import toto.vo.OneOneinq;
// http://localhost:7082/project05/OneOneinq.do
@Controller
public class OneOneinqController {
	@Autowired
	private OneOneinqService service;
	
	@RequestMapping("OneOneinq.do")
    public String OneOneinqList(OneOneinq sch,Model d){
		d.addAttribute("oneList", service.OneOneinqList(sch));
		return "WEB-INF\\views\\mypage\\OneOneinqMain.jsp";
	}
	// http://localhost:7082/project05/MyPoint.do
	@RequestMapping("MyPoint.do")
	public String MyPointList(Model d) {
		return "WEB-INF\\views\\mypage\\MyPointMain.jsp";
	}
}
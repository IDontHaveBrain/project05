package toto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import toto.service.MyPageService;

@Controller
public class MyPageController {
	@Autowired(required=false)
	private MyPageService service;
	@RequestMapping("topup.do")
	public String updatePoint(
			@RequestParam(value="point", defaultValue= "0") int point,
			Model d) {
		// http://localhost:7080/project05/topup.do
		d.addAttribute("addPoint", service.updatePoint(point));
		return "project5\\mypage\\topup.jsp";
	}
}

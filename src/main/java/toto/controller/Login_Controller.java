package toto.controller;

import org.springframework.beans.factory.annotation.Autowired;
//toto_Controller.Login_Controller
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import toto.service.LoginService;
import toto.vo.TOTOLOGIN;



@Controller
public class Login_Controller {
	@Autowired(required = false)
	private LoginService service;
	 //http://localhost:7080/project05/Login.do
	@RequestMapping("Login.do")
	public String loginList(TOTOLOGIN sch, Model d) {
		d.addAttribute("loginList",service.getLoginList(sch));   
		return "WEB-INF\\views\\2222.jsp";
	}
	

}

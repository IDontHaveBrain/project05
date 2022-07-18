package toto.controller;

import org.springframework.beans.factory.annotation.Autowired;
//toto_Controller.Login_Controller
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import toto.service.LoginService;
import toto.vo.Totologin2;

//toto.controller.Login_Controller

@Controller("login_ctrl")
public class Login_Controller {
	@Autowired(required = false)
	private LoginService service;
	 // http://localhost:7080/project05/Login2.do
	@RequestMapping("Login2.do")
	public String loginList(Totologin2 sch, Model d) {
		d.addAttribute("loginList",service.getLoginList(sch));   
		return "WEB-INF\\views\\2222.jsp";
	}
	// http://localhost:7080/project05/Insert.do
	  @RequestMapping("Insert.do")
		public String totoInsert(Totologin2 ins, Model d){
			d.addAttribute(new Totologin2());
			return "WEB-INF\\views\\Member.jsp";
		}

	
	
	

	
	

}

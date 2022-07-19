package toto.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import toto.service.ClosingService;
import toto.util.inputCheck;
import toto.vo.Closing;

@Controller
public class ClosingController {
		@Autowired(required=false)
		private ClosingService service;
		// http://localhost:7080/project05/cloList.do
		@RequestMapping("cloList.do")
		public String cloList(Closing sch, Model d) {
			d.addAttribute("blist", service.cloList(sch));
			
			return "WEB-INF\\views\\board\\closing.jsp";
		}
		
		
		//http://localhost:7080/project05/cloInsertForm.do
		@RequestMapping("cloInsertForm.do")
		public String cloInsertForm(HttpSession session){
			String curId = (String)session.getAttribute("id");
	        if(inputCheck.isEmpty(curId)){
	            return "redirect:cloList.do";
	        }
			return "WEB-INF\\views\\board\\cloInsert.jsp";
		}
		@RequestMapping("cloInsert.do")
		public String cloInsert(Closing ins, Model d, HttpSession session){
			String curId = (String)session.getAttribute("id");
	        if(inputCheck.isEmpty(curId)){
	            return "redirect:cloList.do";
	        }
			service.insertClo(ins);
			d.addAttribute("isInsert","Y");
			return "WEB-INF\\views\\board\\cloInsert.jsp";
		}
		
		
		@RequestMapping("cloDetail.do")
		public String noticeDetail(@RequestParam("no") int no, Model d){
			d.addAttribute("clo",service.getCloDetail(no));
			return "WEB-INF\\views\\board\\cloDetail.jsp";
		}	
		
		@RequestMapping("updateClo.do")
		public String updateClo(Closing upt, Model d) {
			System.out.println("수정:"+upt.getCtitle());
			d.addAttribute("notice", service.updateClo(upt));
			d.addAttribute("proc", "upt");
			return "WEB-INF\\views\\board\\cloDetail.jsp";
		}
		@RequestMapping("deleteClo.do")
		public String deleteClo(@RequestParam("no") int no, Model d) {
			System.out.println("삭제:"+no);
			service.deleteClo(no);
			d.addAttribute("proc", "del");
			return "WEB-INF\\views\\board\\cloDetail.jsp";
		}	
		
}
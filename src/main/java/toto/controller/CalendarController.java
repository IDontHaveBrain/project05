package toto.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import toto.service.CalendarService;
import toto.util.inputCheck;
import toto.vo.Calendar;

@Controller
public class CalendarController {
		@Autowired(required=false)
		private CalendarService service;
		// http://localhost:7080/project05/calList.do
		@RequestMapping("calList.do")
		public String calList(Calendar sch, Model d) {
			d.addAttribute("blist", service.calList(sch));
			
			return "WEB-INF\\views\\board\\calendar.jsp";
		}
		
		
		
		
		//http://localhost:7080/project05/calInsertForm.do
		@RequestMapping("calInsertForm.do")
		public String calInsertForm(HttpSession session){
			String curId = (String)session.getAttribute("id");
	        if(inputCheck.isEmpty(curId)){
	            return "redirect:calList.do";
	        }
			return "WEB-INF\\views\\board\\calInsert.jsp";
		}
		@RequestMapping("calInsert.do")
		public String calInsert(Calendar ins, Model d, HttpSession session){
			String curId = (String)session.getAttribute("id");
	        if(inputCheck.isEmpty(curId)){
	            return "redirect:noticeList.do";
	        }
			service.insertCal(ins);
			d.addAttribute("isInsert","Y");
			return "WEB-INF\\views\\board\\calInsert.jsp";
		}
		
		
		@RequestMapping("calDetail.do")
		public String calDetail(@RequestParam("no") int no, Model d){
			d.addAttribute("cal",service.getCalDetail(no));
			return "WEB-INF\\views\\board\\calDetail.jsp";
		}	
		
		@RequestMapping("updateCal.do")
		public String updateCal(Calendar upt, Model d) {
			System.out.println("수정:"+upt.getTeam());
			d.addAttribute("notice", service.updateCal(upt));
			d.addAttribute("proc", "upt");
			return "WEB-INF\\views\\board\\calDetail.jsp";
		}
		@RequestMapping("deleteCal.do")
		public String deleteNotice(@RequestParam("no") int no, Model d) {
			System.out.println("삭제:"+no);
			service.deleteCal(no);
			d.addAttribute("proc", "del");
			return "WEB-INF\\views\\board\\calDetail.jsp";
		}	
}
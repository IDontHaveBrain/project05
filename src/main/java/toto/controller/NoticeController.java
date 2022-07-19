package toto.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import toto.service.NoticeService;
import toto.util.inputCheck;
import toto.vo.Notice;

@Controller
public class NoticeController {
	@Autowired(required=false)
	private NoticeService service;
	
	// http://localhost:7080/project05/noticeList.do
	@RequestMapping("noticeList.do")
	public String noticeList(Notice sch,Model d, HttpSession session) {
		String curId = (String)session.getAttribute("id");
        if(!inputCheck.isEmpty(curId) && service.checkAdmin(curId) == 1){
            d.addAttribute("hide", 1);
        }
		d.addAttribute("blist",service.noticeList(sch));
		return "WEB-INF\\views\\board\\notice.jsp";
	}
	
	//http://localhost:7080/project05/noticeInsertForm.do
	@RequestMapping("noticeInsertForm.do")
	public String noticeInsertForm(HttpSession session){
		String curId = (String)session.getAttribute("id");
        if(inputCheck.isEmpty(curId)){
            return "redirect:noticeList.do";
        }
		return "WEB-INF\\views\\board\\noticeInsert.jsp";
	}
	@RequestMapping("noticeInsert.do")
	public String noticeInsert(Notice ins, Model d, HttpSession session){
		System.out.println(ins.getBt_division()+ins.getBt_title()+ins.getBt_date());
		String curId = (String)session.getAttribute("id");
        if(inputCheck.isEmpty(curId)){
            return "redirect:noticeList.do";
        }
		service.insertNotice(ins);
		d.addAttribute("isInsert","Y");
		return "WEB-INF\\views\\board\\noticeInsert.jsp";
	}
	
	
	@RequestMapping("noticeDetail.do")
	public String noticeDetail(@RequestParam("bt_no") int no, Model d){
		d.addAttribute("notice",service.getNoticeDetail(no));
		return "WEB-INF\\views\\board\\noticeDetail.jsp";
	}	
	
	@RequestMapping("updateNotice.do")
	public String updateNotice(Notice upt, Model d) {
		System.out.println("수정:"+upt.getBt_division());
		d.addAttribute("notice", service.updateNotice(upt));
		d.addAttribute("proc", "upt");
		return "WEB-INF\\views\\board\\noticeDetail.jsp";
	}
	@RequestMapping("deleteNotice.do")
	public String deleteNotice(@RequestParam("bt_no") int no, Model d) {
		System.out.println("삭제:"+no);
		service.deleteNotice(no);
		d.addAttribute("proc", "del");
		return "WEB-INF\\views\\board\\noticeDetail.jsp";
	}	
}
 
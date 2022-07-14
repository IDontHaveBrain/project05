package toto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
// http://localhost:7082/project05/OneOneinq.do
@Controller
		public class OneOneinqController {
			@RequestMapping("OneOneinq.do")
		    public String boardList(Model d){
				return "WEB-INF\\views\\mypage\\OneOneinqMain.jsp";
	}
}
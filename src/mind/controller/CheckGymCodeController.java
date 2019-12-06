package mind.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mind.model.dto.MemberDTO;
import mind.service.HealthService;

public class CheckGymCodeController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		HttpSession session = request.getSession();
		
		ModelAndView mv = new ModelAndView();
		
		String id =session.getAttribute("curUserId").toString();
		String type =session.getAttribute("curUserType").toString();
		if(type.equals("1") || type.equals("")) { //1번은 회원 2번이 사업자 0번이 비회원
			request.setAttribute("errCode", "5");
			new SQLException();
		}else {
		MemberDTO member=  HealthService.selectMemberById(id);
			int gymCode=member.getGymCode();
			if(gymCode == -1) {
				mv.setViewName("buisness_register.html");
			}else {
				request.setAttribute("errCode", "5");
				new SQLException();
			}
		}
			
		return mv;
	}

}

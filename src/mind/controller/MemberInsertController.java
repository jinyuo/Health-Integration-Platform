package mind.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mind.model.dao.HealthDAO;
import mind.model.dao.HealthDAOImpl;
import mind.model.dto.MemberDTO;
import mind.service.HealthService;
import oracle.net.aso.i;

public class MemberInsertController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 		
		
	
		String id = request.getParameter("memberId");
		String pwd = request.getParameter("memberPassword");
		String name =request.getParameter("name");
		String phoneNum = request.getParameter("phone");
		int gymCode = Integer.parseInt(request.getParameter("memberCheck"));
		
	
		System.out.println(gymCode +"******");
		
		
		
		
		MemberDTO member = new MemberDTO(id,pwd,name,phoneNum,gymCode);
		ModelAndView mv = new ModelAndView();
		
		int result = HealthService.insertMember(member);
		if (result == 0) {
			request.setAttribute("errCode", "7");
		
		} else {

			
			mv.setViewName("index-5.html");
			mv.setRedirect(true);
		}
		return mv;
	}

}

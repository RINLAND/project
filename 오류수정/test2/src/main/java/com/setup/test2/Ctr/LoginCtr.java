package com.setup.test2.Ctr;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.setup.test2.Model.EmpVO;
import com.setup.test2.Service.EmpSrv;
import com.setup.test2.Service.LoginSrv;
import com.setup.test2.Service.SysSrv;


@Controller
public class LoginCtr {
	
	
	@Autowired
	LoginSrv lSrv;
	@Autowired
	EmpSrv empSrv;
	@Autowired
	SysSrv sSrv;
	

	@RequestMapping(value = "/grp_login", method = RequestMethod.GET)
	public ModelAndView setLogin(@ModelAttribute EmpVO evo, HttpSession httpSession) {
		//System.out.println(empSrv.getEmployeeNeedOne(evo));
		
		ModelAndView mav = new ModelAndView();
		
		String cfm = empSrv.getEmpNeedOne(evo).getEmpConfirm();
		int auth = empSrv.getEmpNeedOne(evo).getEmpAuth();
		int comAuth = sSrv.getSystem().getSysAuth();
		
		if( empSrv.getEmpNeedOne(evo) != null ) {
			if( cfm.equals("Y") && auth > comAuth) {
				lSrv.LoginCheck(evo, httpSession);
				mav.setViewName("redirect:/grp_admin");
				
			}else if( cfm.equals("Y") && auth < comAuth) {
				lSrv.LoginCheck(evo, httpSession);
				mav.setViewName("redirect:/");
				
			}else {
				mav.addObject("msg", "관리자의 승인이 필요합니다.");
				mav.setViewName("/grp_login");
			}
		}else {		
			mav.addObject("msg", "아이디/비밀번호를 확인하세요.");
			mav.setViewName("/grp_login");
		}
		return mav;
	}
	
	
	@RequestMapping("/grp_logout")
	@ResponseBody
	public String grpLogout(HttpSession httpSession) {
		lSrv.logout(httpSession);
		return "success";
	}

}

package com.setup.test2.Ctr;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.setup.test2.Model.EmpVO;
import com.setup.test2.Model.GradeVO;
import com.setup.test2.Model.TeamVO;
import com.setup.test2.Service.EmpSrv;
import com.setup.test2.Service.LoginSrv;
import com.setup.test2.Service.RegisterSrv;
import com.setup.test2.Service.SysSrv;


@Controller
public class LoginCtr {
	
	
	@Autowired
	LoginSrv lSrv;
	@Autowired
	EmpSrv empSrv;
	@Autowired
	SysSrv sSrv;
	
	@Autowired
	RegisterSrv rSrv;
	
	
	@RequestMapping(value = "/grp_login", method = RequestMethod.GET)
	public 	String getLogin() {
		
		
		return "grp_login";
	}

	@RequestMapping(value = "/grp_login", method = RequestMethod.POST)
	public ModelAndView setLogin(@ModelAttribute EmpVO evo, HttpSession httpSession) {
		System.out.println(empSrv.getEmpNeedOne(evo));
		
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
	
	@RequestMapping(value = "/grp_register", method = RequestMethod.GET)
	public String getRegisterOne() {
		return "grp_register";
	}
	
	@RequestMapping(value = "/grp_chk_empNum", method = RequestMethod.POST)
	@ResponseBody
	public String chkEmpNum(@RequestParam("empNum") String empNum) {
		
		String msg;
		int empNumCheck = rSrv.getEmpNumCheck(empNum);
		
		if( empNumCheck > 0 ) {
			msg = "failure";
		}else {
			msg = "success";
		}
		
		return msg;
	}
	
	@RequestMapping(value = "/grp_register", method = RequestMethod.POST)
	public String setRegisterOne(@ModelAttribute EmpVO evo) {
		Calendar cal = Calendar.getInstance();
		int enterYear  = Integer.parseInt( evo.getEmpEnter().substring(0, 4));
		System.out.println(enterYear);
		
		
		String num = enterYear + evo.getEmpTeamCode() + evo.getEmpGradeCode();
		evo.setEmpNum(num);
		
		rSrv.setRegisterOne(evo);
		return "redirect:/grp_login";
	}
	
	@RequestMapping(value = "/grp_get_team", method = RequestMethod.POST)
	@ResponseBody
	public List<TeamVO> getTeam() {
		empSrv.grpGetTeam();
		List<TeamVO> list = empSrv.grpGetTeam();
		//System.out.println(list);
		return list;
	}
	
	@RequestMapping(value = "/grp_get_grade", method = RequestMethod.POST)
	@ResponseBody
	public List<GradeVO> getGrade() {
		empSrv.grpGetGrade();
		List<GradeVO> list = empSrv.grpGetGrade();
		//System.out.println(list);
		return list;
	}

}

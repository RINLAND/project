package com.setup.test2.Ctr;

import java.util.Calendar;

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
import com.setup.test2.Model.SysVO;
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

	@RequestMapping(value = "/grp_logout", method = RequestMethod.GET)
	public String getGrpLogout(HttpSession session) {
		lSrv.logout(session);
		return "redirect:/grp_login";
	}

	@RequestMapping(value = "/grp_login", method = RequestMethod.GET)
	public ModelAndView getGrpLogin() {

		SysVO svo = sSrv.getSystem();
		ModelAndView mav = new ModelAndView();
		mav.addObject("comName", svo.getSysTitle());
		mav.addObject("comSubName", svo.getSysSub());
		mav.setViewName("grp_login");
		return mav;
	}

	@RequestMapping(value = "/grp_login", method = RequestMethod.POST)
	public ModelAndView setLogin(@ModelAttribute EmpVO evo, HttpSession session) {
		//System.out.println(evo.getEmpNum());
		//System.out.println(evo.getEmpPwd());
		//System.out.println(lSrv.getEmpNumCheck(evo));
		//System.out.println(sSrv.getSystem());
		//System.out.println(sSrv.getSystem().getSysAuth());
		int result = lSrv.getEmpNumCheck(evo);
		SysVO svo = sSrv.getSystem();

		int auth = sSrv.getSystem().getSysAuth();

		ModelAndView mav = new ModelAndView();
		mav.addObject("comName", svo.getSysTitle());
		mav.addObject("comSubName", svo.getSysSub());

		String msg;

		if (result > 0) {
			EmpVO vo = lSrv.getEmpInfo(evo);
			if (vo.getEmpAuth() >= auth && vo.getEmpConfirm().equals("Y")) {
				lSrv.setSession(evo, session);
				mav.setViewName("redirect:/grp_admin_main");

			} /*else if (vo.getEmpAuth() >= auth && vo.getEmpConfirm().equals("Y")) {
				lSrv.setSession(evo, session);
				mav.setViewName("redirect:/");

			}*/ else {
				msg = "로그인오류!";
				mav.addObject("msg", msg); // ��
				mav.setViewName("grp_login"); // ȭ��
			}

		} else {

			msg = "다시접속.";
			mav.addObject("msg", msg); // ��
			mav.setViewName("grp_login"); // ȭ��
		}
		return mav;
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

		if (empNumCheck > 0) {
			msg = "failure";
		} else {
			msg = "success";
		}

		return msg;
	}

	@RequestMapping(value = "/grp_register", method = RequestMethod.POST)
	public String setRegisterOne(@ModelAttribute EmpVO evo) {
		Calendar cal = Calendar.getInstance();
		int enterYear = Integer.parseInt(evo.getEmpEnter().substring(0, 4));
		System.out.println(enterYear);

		String num = enterYear + evo.getEmpTeamCode() + evo.getEmpGradeCode();
		evo.setEmpNum(num);

		rSrv.setRegisterOne(evo);
		return "redirect:/grp_login";
	}

}

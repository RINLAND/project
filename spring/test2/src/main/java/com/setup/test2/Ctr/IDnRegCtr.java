package com.setup.test2.Ctr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.setup.test2.Model.EmpVO;
import com.setup.test2.Model.GradeVO;
import com.setup.test2.Model.SysVO;
import com.setup.test2.Model.TeamVO;
import com.setup.test2.Service.IDnRegSrv;
import com.setup.test2.Service.SysSrv;


@Controller
public class IDnRegCtr {
	
	@Autowired
	IDnRegSrv irSrv;
	
	@Autowired
	SysSrv sysSrv;
	
	
	@RequestMapping("")
	public String Main() {
		return "main";
	}
	
	@RequestMapping(value = "/grp_login", method = RequestMethod.GET)
	public ModelAndView getGrpLogin() {

		SysVO svo = sysSrv.getSystem();
		ModelAndView mav = new ModelAndView();
		mav.addObject("sysLogo", svo.getSysLogo());
		mav.addObject("sysSub", svo.getSysSub());
		mav.setViewName("grp_login");
		return mav;
	}

	@RequestMapping(value = "/grp_login", method = RequestMethod.POST)
	public ModelAndView setGrpLogin(@ModelAttribute EmpVO evo, HttpSession session) {
		// System.out.println(evo.getEmpNum());//값
		// System.out.println(evo.getEmpPwd());
		// System.out.println(evo); //전체를 담고 있는 객체의 시작 주소
		int result = irSrv.getEmpNumCheck(evo);

		SysVO svo = sysSrv.getSystem();

		int auth = sysSrv.getSystem().getSysAuth();

		ModelAndView mav = new ModelAndView();
		mav.addObject("sysLogo", svo.getSysLogo());
		mav.addObject("sysSub", svo.getSysSub());

		String msg;

		if (result > 0) {
			// 관리자 -> 관리자 페이지로
			// 적절한 권한x -> 메인페이지로
			// mav.setViewName("redirect:/");
			
			//직접 숫자같은 걸 직접넣는것=하드코딩, 혼자 일하는게 아니기때문에 하드코딩 하면 번거로움
			EmpVO vo = irSrv.getEmpInfo(evo);
			if(vo.getEmpAuth() >= auth && vo.getEmpConfirm().equals("Y")) {
				irSrv.setSession(evo, session);
				mav.setViewName("redirect:/grp_admin");
				
			}else if(vo.getEmpAuth() >= auth && vo.getEmpConfirm().equals("Y")) {
				irSrv.setSession(evo, session);
				mav.setViewName("redirect:/");
				
			}else {
				msg = "접속권한이 없습니다. \n관리자 문의 요망";
				mav.addObject("msg",msg); //값
				mav.setViewName("grp_login"); //화면
			}
			
		}else {
			
			msg = "사용할 수 없는 사번입니다.";
			mav.addObject("msg",msg); //값
			mav.setViewName("grp_login"); //화면
		}
		return mav;
	}
	
	
	
	@RequestMapping(value = "/grp_get_team", method = RequestMethod.POST)
	@ResponseBody //ajax쓸 준비
	public List<TeamVO> grpGetTeam() {
		irSrv.grpGetTeam();
		List<TeamVO> list = irSrv.grpGetTeam();
		return list;
	}
	
	@RequestMapping(value = "/grp_get_grade", method = RequestMethod.POST)
	@ResponseBody
	public List<GradeVO> grpGetGrade() {
		irSrv.grpGetGrade();
		List<GradeVO> list = irSrv.grpGetGrade();
		return list;
	}
	

}

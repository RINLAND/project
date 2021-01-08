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
		// System.out.println(evo.getEmpNum());//��
		// System.out.println(evo.getEmpPwd());
		// System.out.println(evo); //��ü�� ��� �ִ� ��ü�� ���� �ּ�
		int result = irSrv.getEmpNumCheck(evo);

		SysVO svo = sysSrv.getSystem();

		int auth = sysSrv.getSystem().getSysAuth();

		ModelAndView mav = new ModelAndView();
		mav.addObject("sysLogo", svo.getSysLogo());
		mav.addObject("sysSub", svo.getSysSub());

		String msg;

		if (result > 0) {
			// ������ -> ������ ��������
			// ������ ����x -> ������������
			// mav.setViewName("redirect:/");
			
			//���� ���ڰ��� �� �����ִ°�=�ϵ��ڵ�, ȥ�� ���ϴ°� �ƴϱ⶧���� �ϵ��ڵ� �ϸ� ���ŷο�
			EmpVO vo = irSrv.getEmpInfo(evo);
			if(vo.getEmpAuth() >= auth && vo.getEmpConfirm().equals("Y")) {
				irSrv.setSession(evo, session);
				mav.setViewName("redirect:/grp_admin");
				
			}else if(vo.getEmpAuth() >= auth && vo.getEmpConfirm().equals("Y")) {
				irSrv.setSession(evo, session);
				mav.setViewName("redirect:/");
				
			}else {
				msg = "���ӱ����� �����ϴ�. \n������ ���� ���";
				mav.addObject("msg",msg); //��
				mav.setViewName("grp_login"); //ȭ��
			}
			
		}else {
			
			msg = "����� �� ���� ����Դϴ�.";
			mav.addObject("msg",msg); //��
			mav.setViewName("grp_login"); //ȭ��
		}
		return mav;
	}
	
	
	
	@RequestMapping(value = "/grp_get_team", method = RequestMethod.POST)
	@ResponseBody //ajax�� �غ�
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

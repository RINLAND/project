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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.setup.test2.Model.EmpVO;
import com.setup.test2.Model.GradeVO;
import com.setup.test2.Model.TeamVO;
import com.setup.test2.Service.EmpSrv;
import com.setup.test2.Service.IDnRegSrv;



@Controller
@RequestMapping("/employee")
public class EmpCtr {
	
	@Autowired
	EmpSrv eSrv;
	
	@Autowired
	IDnRegSrv irSrv;
	
	
	
	

	@RequestMapping(value = "/grp_employee_list")
	public ModelAndView empList(
		@RequestParam(defaultValue = "1") int curPage, 
		@RequestParam(defaultValue = "empName") String searchOpt, @RequestParam(defaultValue = "") String words) {
		
		ModelAndView mav = new ModelAndView();
		
		
		int count = eSrv.getEmpCount(searchOpt, words);
				
		mav.setViewName("grp_employee/grp_employee_list");
		
		return mav;
	}
	
	@RequestMapping(value= "/grp_employee_delete", method = RequestMethod.POST )
	@ResponseBody
	public String grpEmpDelete(@RequestParam int eid) {
		eSrv.setEmpDeleteOne(eid);
		return "success";
	}
	
	@RequestMapping(value= "/grp_employee_delete_all", method = RequestMethod.POST )
	@ResponseBody
	public String grpEmpDelete(@RequestParam(value="chkArr[]")List<String> chkArr) {
		//System.out.println(chkArr); �迭�Ѿ������ Ȯ��
		int eid;
		for(String list : chkArr) {
			eid = Integer.parseInt(list);
			eSrv.setEmpDeleteAll(eid);
		}
		return "success";
		
	}
	
	
	@RequestMapping(value= "/grp_employee_confirm_change", method = RequestMethod.POST )
	@ResponseBody
	public String EmpConfirmChange(@RequestParam String empConfirm, @RequestParam int empID) {
		eSrv.setEmpConfirmChange(empConfirm, empID);
		return "success";
	}
	
	@RequestMapping(value= "/grp_employee_auth_change", method = RequestMethod.POST )
	@ResponseBody
	public String EmpAuthChange(@RequestParam int empAuth, @RequestParam int empID) {
		eSrv.setEmpAuthChange(empAuth, empID);
		return "success";
	}
	
	@RequestMapping(value= "/grp_employee_register", method = RequestMethod.GET )
	public ModelAndView grpEmpReg(HttpSession session) {
		//System.out.println(session.getAttribute("empNum"));
		String sessionNum = (String) session.getAttribute("empNum");
		
		EmpVO evo = eSrv.getEmpNeedOne(evo);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("empOne", evo);
		mav.setViewName("grp_employee/grp_employee_register");
		return mav;
			
	}
	
	
	@RequestMapping(value = "/grp_register", method = RequestMethod.GET)
	public String getGrpRegister() {
		return "grp_register";
	}
	
	@RequestMapping(value = "/grp_register", method = RequestMethod.POST)
	public String setGrpRegister(@ModelAttribute EmpVO evo) {
		
		//�����ȣ �����-�Ի��+ �μ���ȣ + ����+pk -> empNum
		int enterYear = Integer.parseInt(evo.getEmpJoin().substring(0, 4));
		String tCode = evo.getEmpTeamCode();
		String gCode = evo.getEmpGradeCode();
		
		String eNum = enterYear + tCode + gCode;
		evo.setEmpNum(eNum);
		
		System.out.println(evo.getEmpNum());
		 //ù��°���� 4�ڸ� �߶󳻱� -2020
		//�����ȣ ����� ��
		
		
		//ȸ�����Խ� �ʼ� �Է�
		
		irSrv.setEmpRegister(evo); 
		
		//ȸ�����Խ� �ʼ� �Է� ��
		
		
		return "redirect:/grp_login";
	}
	
	@RequestMapping(value = "/grp_admin_register", method = RequestMethod.POST)
	public String setGrpRegister(
			@ModelAttribute EmpVO evo, MultipartFile file ) {
		
		System.out.println("aaa");
		//���� ���� ���� �Է�
		eSrv.setEmpRegOthers(evo);
		//���� ���� ���� �Է� ��
		
		
		return "redirect:/employee/grp_employee_list";
	}
	
	
	@RequestMapping(value = "/grp_get_team", method = RequestMethod.POST)
	@ResponseBody //ajax�� �غ�
	public List<TeamVO> grpGetTeam() {
		eSrv.grpGetTeam();
		List<TeamVO> list = eSrv.grpGetTeam();
		return list;
	}
	
	@RequestMapping(value = "/grp_get_grade", method = RequestMethod.POST)
	@ResponseBody
	public List<GradeVO> grpGetGrade() {
		eSrv.grpGetGrade();
		List<GradeVO> list = eSrv.grpGetGrade();
		return list;
	}

}

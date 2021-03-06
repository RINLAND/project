package com.setup.test2.Ctr;


import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
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
import com.setup.test2.Service.LoginSrv;
import com.setup.test2.Service.RegisterSrv;



@Controller
@RequestMapping("/employee")
public class EmpCtr {
	
	@Autowired
	EmpSrv eSrv;
	
	@Autowired
	LoginSrv lSrv;
	
	@Autowired
	RegisterSrv rSrv;
	

	
	@RequestMapping(value= "/grp_employee_confirm_change", method = RequestMethod.POST )
	@ResponseBody
	public String EmpConfirmChange(@RequestParam String empConfirm, @RequestParam int empId) {
		eSrv.setEmpConfirmChange(empConfirm, empId);
		return "success";
	}
	
	
	
	

	
	@RequestMapping(value = "/grp_register", method = RequestMethod.POST)
	public String setRegisterOne(@ModelAttribute EmpVO evo) {
		Calendar cal = Calendar.getInstance();
		int enterYear  = Integer.parseInt(evo.getEmpEnter().substring(0, 4));
		System.out.println(enterYear);
		
		int regYear	= cal.get(Calendar.YEAR);
		System.out.println(regYear);
		
		String num = enterYear + evo.getEmpTeamCode() + evo.getEmpGradeCode();
		evo.setEmpNum(num);
		
		rSrv.setRegisterOne(evo);
		return "redirect:/grp_login";
	}
	

	
	
	
}

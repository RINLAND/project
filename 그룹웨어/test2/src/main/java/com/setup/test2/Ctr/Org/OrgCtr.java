 package com.setup.test2.Ctr.Org;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

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
import com.setup.test2.Service.EmpSrv;
import com.setup.test2.Service.RegisterSrv;

import pager.Pager;

@Controller
@RequestMapping("/Organization")
public class OrgCtr {
	
	@Autowired
	RegisterSrv rSrv;
	
	@Autowired
	EmpSrv eSrv;
	
	@Resource(name="uploadPath")
	private String uploadPath;

	@RequestMapping("")
	public String getEmployeeHome() {
		return "grp_org/grp_org_employee";
	}
	
	@RequestMapping(value="/grp_employee_list")
	public ModelAndView getEmployeeList(
			@RequestParam(defaultValue = "") String words, 
			@RequestParam(defaultValue = "emp_name") String searchOpt,
			@RequestParam(defaultValue = "1") int curPage ) 
	
	{
		
		int count = eSrv.getEmpCount(searchOpt, words);
		
		Pager pager = new Pager(count, curPage);
		
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		List<EmpVO> list = eSrv.getEmpListAll(start, end, words, searchOpt);
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.addObject("searchOpt", searchOpt);
		mav.addObject("words", words);
		mav.addObject("start", start);
		mav.addObject("end", end);
		mav.addObject("blockBegin", pager.getBlockBegin());
		mav.addObject("blockEnd", pager.getBlockEnd());
		mav.addObject("curBlock", pager.getCurBlock());
		mav.addObject("totalBlock", pager.getTotBlock());
		mav.addObject("prevPage", pager.getPrevPage());
		mav.addObject("nextPage", pager.getNextPage());
		mav.addObject("totalPage", pager.getTotPage());
		mav.addObject("curPage", pager.getCurPage());
		mav.addObject("selected", pager.getCurPage());
		mav.setViewName("grp_org/grp_org_employee");
		return mav;
	}
	
	
	@RequestMapping(value = "/grp_employee_register", method = RequestMethod.GET)
	public String getEmployeeRegister() {
		return "grp_org/grp_orgemp_register";
	}
	
	@RequestMapping(value = "/grp_employee_register", method = RequestMethod.POST)
	public String setEmployeeRegister(@ModelAttribute EmpVO evo, MultipartFile file) throws IOException {
		Calendar cal = Calendar.getInstance();
		int enterYear  = Integer.parseInt(evo.getEmpEnter().substring(0, 4));
		
		int regYear	= cal.get(Calendar.YEAR);
		/*
		int stepSize = regYear - enterYear + 1;
		//System.out.println(stepSize);
		evo.setEmpStep(stepSize);
		*/
		String num = enterYear + evo.getEmpTeamCode() + evo.getEmpGradeCode();
		evo.setEmpNum(num);
		
		/* 파일 업로드 */
		UUID uuid = UUID.randomUUID();
		
		String orgFileName = uuid.toString() + "_" + file.getOriginalFilename();
		File location = new File(uploadPath, orgFileName);
		FileCopyUtils.copy(file.getBytes(), location);
		
		
		evo.setEmpPhoto(orgFileName);
		/* 파일 업로드 */
		
		rSrv.setRegisterOne(evo);
		rSrv.setEmpRegOthers(evo);
		return "redirect:/Organization/grp_employee_list";
	}
	//직원삭제
	@RequestMapping(value = "/grp_employee_delete", method = RequestMethod.POST)
	@ResponseBody
	public String setEmpDeleteOne(@RequestParam int empId) {
		//System.out.println(empId);
		eSrv.setEmpDeleteOne(empId);
		return "success";
	}
	
	//직원모두삭제
		@RequestMapping(value = "/grp_employee_delete_all", method = RequestMethod.POST)
		@ResponseBody
		public String userDeleteAll(@RequestParam(value = "chkArr[]") List<String> chkArr) {
			int empId;
			for(String list : chkArr) {
				empId = Integer.parseInt(list);
				eSrv.setEmpDeleteAll(empId);
			}
			return "success";
		}
	//직원권한변경
		@RequestMapping(value = "/grp_employee_auth_change", method = RequestMethod.POST)
		@ResponseBody
		public String setEmployeeAuthChange(@RequestParam int empAuth, @RequestParam int empId) {
			eSrv.setEmpAuthChange(empAuth, empId);
			return "success";
		}
		
		@RequestMapping(value= "/grp_employee_confirm_change", method = RequestMethod.POST )
		@ResponseBody
		public String EmpConfChange(@RequestParam String empConfirm, @RequestParam int empId) {
			eSrv.setEmpConfirmChange(empConfirm, empId);
			return "success";
		}

	@RequestMapping(value="/grp_orgchart", method = RequestMethod.GET)
	public String grpMemberChart() {
		return "grp_org/grp_orgchart";
	}
	
	//직원상세 등록
	@RequestMapping(value="/grp_emp_others", method = RequestMethod.GET)
	public String setEmpRegOthers() {
		return "grp_org/grp_orgemp_register";
	}
	
	
	@RequestMapping(value="/grp_emp_others", method = RequestMethod.POST)
	public String setEmpRegOthers(EmpVO evo) {
		eSrv.setEmpRegOthers(evo);
		return "redirect:/Organization/grp_employee_list";
	}
	
	/*직원 수정(가입된 직원 상세등록)
	@RequestMapping(value="grp_emp_modify", method = RequestMethod.GET)
	public ModelAndView setEmpModify(EmpVO empVO) {
		 
	}*/
	
	
	//직원목록
	@RequestMapping(value="/grp_employee_view" , method = RequestMethod.GET)
	public ModelAndView getEmployeeNeedOne(@ModelAttribute EmpVO vo) {
		EmpVO evo = eSrv.getEmployeeNeedOne(vo);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("employee", evo);
		
		mav.setViewName("grp_org/grp_employee_view");
		
		return mav;
	}
	
	
	/*직원목록2
	 @RequestMapping(value = "/grp_employee_view")
	   	public String getEmployeeNeedOne(HttpServletRequest request, ModelMap modelMap) throws Exception {
	    	
	    	String empId = request.getParameter("empId");
	    	
	    	
	    	EmpVO evo = eSrv.getEmployeeNeedOne(empId);
	    	
	        
	    	modelMap.addAttribute("employee", evo);
	    	
	        return "grp_notice/grp_notice_view";
	    }
	    
	    */
}
	
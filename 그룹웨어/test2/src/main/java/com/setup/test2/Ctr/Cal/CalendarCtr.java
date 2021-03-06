package com.setup.test2.Ctr.Cal;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.setup.test2.Model.CalVO;
import com.setup.test2.Model.ComCalVO;
import com.setup.test2.Service.Cal.CalSrv;

@Controller
@RequestMapping("/grp_cal")
public class CalendarCtr {
	
	@Autowired
	CalSrv cSrv;

	@RequestMapping("")
	public String getCalendarHome() {
		return "grp_cal/grp_personalcal";
	}
	
	@RequestMapping("/grp_comcal")
	public ModelAndView getComCalendarHome() {
		
		List<ComCalVO> list = cSrv.cgetCal();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("grp_cal/grp_comcal");
		return mav;
	}
	
	@RequestMapping("/grp_calendar_add")
	@ResponseBody
	public void setCal(@ModelAttribute CalVO cvo) {
		cSrv.setCal(cvo);
	}
	
	@RequestMapping("/grp_calendar_list")
	@ResponseBody
	public List<CalVO> getCal() {
		List<CalVO> list = cSrv.getCal();
		
		return list;
	}
	
	@RequestMapping("/grp_calendar_cadd")
	@ResponseBody
	public void csetCal(@ModelAttribute ComCalVO ccvo) {
		cSrv.csetCal(ccvo);
	}
	
	@RequestMapping("/grp_calendar_clist")
	@ResponseBody
	public List<ComCalVO> cgetCal() {
		List<ComCalVO> list = cSrv.cgetCal();
		
		return list;
	}
	
	@RequestMapping(value="/delete")
	public String cdelCal(HttpServletRequest request) throws Exception {
		String comcal_id = request.getParameter("comcal_id");
		cSrv.cdelCal(comcal_id);
		
		return "redirect:/grp_cal/grp_comcal";
	}
	
}















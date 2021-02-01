package com.setup.test2.Ctr.Commute;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/commute")
public class CommuteCtr {
	
	@RequestMapping("")
	public String getAttendHome() {
		return "grp_commute/grp_commute";
	}
	
}

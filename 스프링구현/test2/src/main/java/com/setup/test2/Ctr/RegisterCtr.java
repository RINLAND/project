package com.setup.test2.Ctr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.setup.test2.Model.GradeVO;
import com.setup.test2.Model.TeamVO;
import com.setup.test2.Service.RegisterSrv;

@Controller
public class RegisterCtr {

	
	@Autowired
	RegisterSrv rSrv;
	
	@RequestMapping(value = "/grp_get_team", method = RequestMethod.POST)
	@ResponseBody
	public List<TeamVO> getTeam() {
		rSrv.getTeamList();
		List<TeamVO> list = rSrv.getTeamList();
		System.out.println(list);
		return list;
	}
	
	@RequestMapping(value = "/grp_get_grade", method = RequestMethod.POST)
	@ResponseBody
	public List<GradeVO> getGrade() {
		rSrv.getGradeList();
		List<GradeVO> list = rSrv.getGradeList();
		System.out.println(list);
		return list;
	}
}

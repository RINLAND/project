package com.setup.test2.Service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.setup.test2.Model.EmpVO;
import com.setup.test2.Model.GradeVO;
import com.setup.test2.Model.TeamVO;


public interface LoginSrv {
	

	public EmpVO LoginCheck(EmpVO evo, HttpSession httpSession );
		
	public void logout (HttpSession httpSession);

	public List<TeamVO> grpGetTeam();
	
	public List<GradeVO> grpGetGrade();
	
	public void setEmpRegister(EmpVO evo);
	
	public int getEmpNumCheck(EmpVO evo);
	
	public EmpVO getEmpInfo(EmpVO evo);
	
	public void setSession(EmpVO evo, HttpSession session);
	
}

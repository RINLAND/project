package com.setup.test2.Repository;


import java.util.List;


import javax.servlet.http.HttpSession;

import com.setup.test2.Model.EmpVO;
import com.setup.test2.Model.GradeVO;
import com.setup.test2.Model.TeamVO;

public interface LoginDao {
	
	
	public EmpVO LoginCheck(EmpVO evo);
		
	public void logout (HttpSession httpSession);
	
	public List<TeamVO> grpGetTeam();
	
	public List<GradeVO> grpGetGrade();
	
	public void setEmpRegister(EmpVO evo);
	
	public int getEmpNumCheck(EmpVO evo);
	
	public EmpVO getEmpInfo(EmpVO evo);
}

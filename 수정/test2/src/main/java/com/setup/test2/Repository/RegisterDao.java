package com.setup.test2.Repository;

import java.util.HashMap;
import java.util.List;


import com.setup.test2.Model.EmpVO;
import com.setup.test2.Model.GradeVO;
import com.setup.test2.Model.TeamVO;



public interface RegisterDao {

public List<TeamVO> getTeamList();
	
	public List<GradeVO> getGradeList();
	
	public int getEmpNumCheck(String empNum);
	
	public void setRegisterOne(EmpVO evo);
	
	public void setRegisterOthersOne(EmpVO evo);
	
	public void setEmployeeAuthChange(HashMap<String, String> map);
	
	/**/
	

	
	
}

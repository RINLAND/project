package com.setup.test2.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.EmpVO;
import com.setup.test2.Model.GradeVO;
import com.setup.test2.Model.TeamVO;
import com.setup.test2.Repository.RegisterDao;




@Service
public class RegisterSrvImpl implements RegisterSrv{
	@Autowired
	RegisterDao rDao;

	@Override
	public List<TeamVO> getTeamList() {
		return rDao.getTeamList();
	}

	@Override
	public List<GradeVO> getGradeList() {
		return rDao.getGradeList();
	}

	@Override
	public int getEmpNumCheck(String empNum) {
		return rDao.getEmpNumCheck(empNum);
	}

	@Override
	public void setRegister(EmpVO evo) {
		rDao.setRegisterOne(evo);
	}

	@Override
	public void setRegisterOthersOne(EmpVO evo) {
		rDao.setRegisterOthersOne(evo);
	}

	@Override
	public void setEmployeeAuthChange(String auth, String empNum) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("auth", auth);
		map.put("empNum", empNum);
		rDao.setEmployeeAuthChange(map);
	}

	
	
}

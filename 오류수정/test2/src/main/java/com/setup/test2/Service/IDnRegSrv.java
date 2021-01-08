package com.setup.test2.Service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.EmpVO;
import com.setup.test2.Model.GradeVO;
import com.setup.test2.Model.TeamVO;
import com.setup.test2.Repository.IDnRegDao;



@Service
public class IDnRegSrv {
	
	@Autowired
	IDnRegDao irDao;
	
	public List<TeamVO> grpGetTeam() {
		return irDao.grpGetTeam();
	}
	
	public List<GradeVO> grpGetGrade() {
		return irDao.grpGetGrade();
	}
	
	public void setEmpRegister(EmpVO evo) {
		 irDao.setEmpRegister(evo);
	}
	
	public int getEmpNumCheck(EmpVO evo) {
		return irDao.getEmpNumCheck(evo);
	}
	
	public EmpVO getEmpInfo(EmpVO evo) {
		return irDao.getEmpInfo(evo);
	}
	
	public void setSession(EmpVO evo, HttpSession session) {
		EmpVO vo = irDao.getEmpInfo(evo);
		if(vo != null) {
			session.setAttribute("empTeamName", vo.getEmpTeamName());
			session.setAttribute("empGradeName", vo.getEmpGradeName());
			session.setAttribute("emp_num", vo.getEmpNum());
			session.setAttribute("emp_name", vo.getEmpName());
			session.setAttribute("emp_auth", vo.getEmpAuth());
			session.setAttribute("emp)_confirm", vo.getEmpConfirm());
			
		}
	}
	
	public void setLogout(HttpSession session) {
		session.invalidate();
	}

}

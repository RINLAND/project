package com.setup.test2.Service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.EmpVO;
import com.setup.test2.Model.GradeVO;
import com.setup.test2.Model.TeamVO;
import com.setup.test2.Repository.LoginDao;

@Service
public class LoginSrvImpl implements LoginSrv {
	
	@Autowired
	LoginDao loginDao;
	
	@Override
	public EmpVO LoginCheck(EmpVO evo, HttpSession httpSession) {
		EmpVO result =  loginDao.LoginCheck(evo);
		
		if( result != null ) {
			httpSession.setAttribute("empId", result. getEmpId());
			httpSession.setAttribute("empPwd", result.getEmpPwd());
		}
		
		return result;
	}
	
	
	@Override
	public void logout(HttpSession httpSession) {
		httpSession.invalidate();		
	}
	
	public List<TeamVO> grpGetTeam() {
		return loginDao.grpGetTeam();
	}
	
	public List<GradeVO> grpGetGrade() {
		return loginDao.grpGetGrade();
	}
	
	public void setEmpRegister(EmpVO evo) {
		loginDao.setEmpRegister(evo);
	}
	
	public int getEmpNumCheck(EmpVO evo) {
		return loginDao.getEmpNumCheck(evo);
	}
	
	public EmpVO getEmpInfo(EmpVO evo) {
		return loginDao.getEmpInfo(evo);
	}
	
	public void setSession(EmpVO evo, HttpSession session) {
		EmpVO vo = loginDao.getEmpInfo(evo);
		if(vo != null) {
			session.setAttribute("empTeamName", vo.getEmpTeamName());
			session.setAttribute("empGradeName", vo.getEmpGradeName());
			session.setAttribute("emp_num", vo.getEmpNum());
			session.setAttribute("emp_name", vo.getEmpName());
			session.setAttribute("emp_auth", vo.getEmpAuth());
			session.setAttribute("emp)_confirm", vo.getEmpConfirm());
			
		}
	}

}

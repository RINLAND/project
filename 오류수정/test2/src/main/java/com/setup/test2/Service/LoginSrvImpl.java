package com.setup.test2.Service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.EmpVO;
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


}

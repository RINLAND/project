package com.setup.test2.Service;

import javax.servlet.http.HttpSession;

import com.setup.test2.Model.EmpVO;


public interface LoginSrv {
	

	public EmpVO LoginCheck(EmpVO evo, HttpSession httpSession );
		
	public void logout (HttpSession httpSession);

	
}

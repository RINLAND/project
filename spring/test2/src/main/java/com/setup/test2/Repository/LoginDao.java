package com.setup.test2.Repository;

import javax.servlet.http.HttpSession;

import com.setup.test2.Model.EmpVO;

public interface LoginDao {
	
	
	public EmpVO LoginCheck(EmpVO evo);
		
	public void logout (HttpSession httpSession);
	
}

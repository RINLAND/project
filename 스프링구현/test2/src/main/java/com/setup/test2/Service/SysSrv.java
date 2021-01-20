package com.setup.test2.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.SysVO;
import com.setup.test2.Repository.SysDao;

@Service
public class SysSrv {

	@Autowired
	SysDao sysDao;
	
	public SysVO getSystem() {
		return sysDao.getSystem();
	}
	
	public void setSystem(SysVO svo) {
		sysDao.setSystem(svo);
	}
}

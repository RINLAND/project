package com.setup.test2.Service.Cal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.CalVO;
import com.setup.test2.Model.ComCalVO;
import com.setup.test2.Repository.Cal.CalDao;

@Service
public class CalSrvImpl implements CalSrv {
	
	@Autowired
	CalDao cDao;
	
	@Override
	public void setCal(CalVO cvo) {
		cDao.setCal(cvo);
	}

	@Override
	public List<CalVO> getCal() {
		return cDao.getCal();
	}

	@Override
	public void csetCal(ComCalVO ccvo) {
		cDao.csetCal(ccvo);
	}

	@Override
	public List<ComCalVO> cgetCal() {
		return cDao.cgetCal();
	}

}

package com.setup.test2.Service.Cal;

import java.util.List;

import com.setup.test2.Model.CalVO;
import com.setup.test2.Model.ComCalVO;


public interface CalSrv {

	
	public void setCal(CalVO cvo);
	
	public List<CalVO> getCal() ;
	
	public void csetCal(ComCalVO ccvo);
	
	public List<ComCalVO> cgetCal();
	
}










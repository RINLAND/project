package com.setup.test2.Srv.Trainee;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.TraineeVO;
import com.setup.test2.Repository.Trainee.TraineeDao;

@Service
public class TraineeSrv {
	
	@Autowired
	TraineeDao tDao;
	
	public void setTraDeleteOne(int traID) {
		 tDao.setTraDeleteOne(traID);		
	}
	
	public List<TraineeVO> getTraListAll(int start, int end, String words, String searchOpt) {
		return tDao.getTraListAll(start, end, words, searchOpt);
	}
	
	public int getTraCount(String searchOpt, String words) {
		return tDao.getTraCount(searchOpt, words);
	}
	
	public TraineeVO getTraNeedOne(String sessionNum) {
		return tDao.getTraNeedOne(sessionNum);
	}
	
	public void setTraRegister(TraineeVO tvo) {
		tDao.setTraRegister(tvo);	
	}

}

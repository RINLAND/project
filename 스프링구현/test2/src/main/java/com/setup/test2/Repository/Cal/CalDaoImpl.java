package com.setup.test2.Repository.Cal;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setup.test2.Model.CalVO;
import com.setup.test2.Model.ComCalVO;

@Repository
public class CalDaoImpl implements CalDao{
	@Autowired
	SqlSession sql;
	
	@Override
	public void setCal(CalVO cvo) {
		sql.insert("calendar.setCal", cvo);
	}

	@Override
	public List<CalVO> getCal() {
		return sql.selectList("calendar.getCal");
	}

	@Override
	public void csetCal(ComCalVO ccvo) {
		sql.insert("calendar.csetCal", ccvo);
		
	}

	@Override
	public List<ComCalVO> cgetCal() {
		return sql.selectList("calendar.cgetCal");

	}

}

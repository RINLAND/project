package com.setup.test2.Repository;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setup.test2.Model.SysVO;

@Repository
public class SysDao {

	@Autowired
	SqlSession sql;
	
	public SysVO getSystem() {
		return sql.selectOne("system.getSystem");
	}
	
	public void setSystem(SysVO svo) {
		sql.update("system.setSystem", svo);
	}

	
}

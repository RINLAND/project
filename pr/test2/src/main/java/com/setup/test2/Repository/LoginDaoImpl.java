package com.setup.test2.Repository;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setup.test2.Model.EmpVO;




@Repository
public class LoginDaoImpl  implements LoginDao{

	@Autowired
	SqlSession sql;

	@Override
	public EmpVO LoginCheck(EmpVO evo) {
		System.out.println("Repository");
		System.out.println("mappers");
		return sql.selectOne("login.loginCheck", evo);
	}

	@Override
	public void logout(HttpSession httpSession) {}
}

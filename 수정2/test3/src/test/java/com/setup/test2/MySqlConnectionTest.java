package com.setup.test2;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.jupiter.api.Test;


public class MySqlConnectionTest {
	 private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	 private static final String URL = "jdbc:mysql://127.0.0.1 /grp?serverTimezone=UTC"; 
	 private static final String USER = "root"; //DB ����ڸ�
	 private static final String PW = "root";   //DB ����� ��й�ȣ
	 
	 @Test
	 public void testConnection() throws Exception{
	  Class.forName(DRIVER);
	  
	  try(Connection con = DriverManager.getConnection(URL, USER, PW)){
		  
	   System.out.println("데베연결완료");
	   System.out.println(con);
	  }catch (Exception e) {
	   System.out.println("오류발생");
	   e.printStackTrace();
	  }
	 }

}

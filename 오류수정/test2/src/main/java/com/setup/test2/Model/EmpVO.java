package com.setup.test2.Model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class EmpVO {

	private int empId;
	private String empTeamCode; //저장
	private String empTeamName; //볼때
	
	private String empGradeCode;
	private String empGradeName;
	
	private String empNum;
	private String empName;
	private String empPwd;
	private Date empDate;
	private int empAuth;
	private String empConfirm;
	private String empJoin;
	
	
	
	

	public String getEmpJoin() {
		return empJoin;
	}



	public void setEmpJoin(String empJoin) {
		this.empJoin = empJoin;
	}



	public int getEmpId() {
		return empId;
	}



	public void setEmpId(int empId) {
		this.empId = empId;
	}



	public String getEmpTeamCode() {
		return empTeamCode;
	}



	public void setEmpTeamCode(String empTeamCode) {
		this.empTeamCode = empTeamCode;
	}



	public String getEmpTeamName() {
		return empTeamName;
	}



	public void setEmpTeamName(String empTeamName) {
		this.empTeamName = empTeamName;
	}



	public String getEmpGradeCode() {
		return empGradeCode;
	}



	public void setEmpGradeCode(String empGradeCode) {
		this.empGradeCode = empGradeCode;
	}



	public String getEmpGradeName() {
		return empGradeName;
	}



	public void setEmpGradeName(String empGradeName) {
		this.empGradeName = empGradeName;
	}



	public String getEmpNum() {
		return empNum;
	}



	public void setEmpNum(String empNum) {
		this.empNum = empNum;
	}



	public String getEmpName() {
		return empName;
	}



	public void setEmpName(String empName) {
		this.empName = empName;
	}



	public String getEmpPwd() {
		return empPwd;
	}



	public void setEmpPwd(String empPwd) {
		this.empPwd = empPwd;
	}



	public Date getEmpDate() {
		return empDate;
	}



	public void setEmpDate(Date empDate) {
		this.empDate = empDate;
	}



	public int getEmpAuth() {
		return empAuth;
	}



	public void setEmpAuth(int empAuth) {
		this.empAuth = empAuth;
	}



	public String getEmpConfirm() {
		return empConfirm;
	}



	public void setEmpConfirm(String empConfirm) {
		this.empConfirm = empConfirm;
	}



	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	
	
}

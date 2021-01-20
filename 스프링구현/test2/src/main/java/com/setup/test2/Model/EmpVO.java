package com.setup.test2.Model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class EmpVO {

	private int empId;
	private String empTeamCode; //����
	private String empTeamName; //����
	
	private String empGradeCode;
	private String empGradeName;
	
	private String empNum;
	private String empName;
	private String empPwd;
	private Date empDate;
	private int empAuth;
	private String empConfirm;
	private String empEnter;
	
	
	private int ref; //디비에도 넣어야하나?
	
	public int getRef() {
		return ref;
	}



	public void setRef(int ref) {
		this.ref = ref;
	}



	public String getEmpEnter() {
		return empEnter;
	}



	public void setEmpEnter(String empEnter) {
		this.empEnter = empEnter;
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

package com.setup.test2.Model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TraineeVO {
	public int traID;
	public String traName;
	public String traGender;
	public String traBirth;
	public String traHight;
	public String traWeight;
	public String traPhon;
	public String traTell;
	public String traHire;
	public Date traHireDate;
	public String traUnique;
	public String traUniqueDetail;
	public String traMilitary;
	public String traHobby;
	public String traSpeciality;
	public String traManager;
	public String traRewarding;
	public String traStructue;
	public String traLevel;
	public String traSchool;
	public String traMajor;
	public String traMail;
	public String traAddr;
	public String traHome;
	public String traLicense1;
	public String traLicense2;
	public String traLicense3;
	public String traLang1;
	public String traLang2;
	public String traLang3;
	public String traAward1;
	public String traAward2;
	public String traAward3;
	public String traAward4;
	public String traPhoto;
	public String traComment;
	public String traID_FK;
	
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	
	public SimpleDateFormat getSdf() {
		return sdf;
	}
	public void setSdf(SimpleDateFormat sdf) {
		this.sdf = sdf;
	}
	
	
	public int getTraID() {
		return traID;
	}
	
	public void setTraID(int traID) {
		this.traID = traID;
	}
	public String getTraName() {
		return traName;
	}
	public void setTraName(String traName) {
		this.traName = traName;
	}
	public String getTraGender() {
		return traGender;
	}
	public void setTraGender(String traGender) {
		this.traGender = traGender;
	}
	public String getTraBirth() {
		return traBirth;
	}
	public void setTraBirth(String traBirth) {
		this.traBirth = traBirth;
	}
	public String getTraHight() {
		return traHight;
	}
	public void setTraHight(String traHight) {
		this.traHight = traHight;
	}
	public String getTraWeight() {
		return traWeight;
	}
	public void setTraWeight(String traWeight) {
		this.traWeight = traWeight;
	}
	public String getTraPhon() {
		return traPhon;
	}
	public void setTraPhon(String traPhon) {
		this.traPhon = traPhon;
	}
	public String getTraTell() {
		return traTell;
	}
	public void setTraTell(String traTell) {
		this.traTell = traTell;
	}
	public String getTraHire() {
		return traHire;
	}
	public void setTraHire(String traHire) {
		this.traHire = traHire;
	}
	public String getTraHireDate() {
		return sdf.format(traHireDate);
	}
	public void setTraHireDate(Date traHireDate) {
		this.traHireDate = traHireDate;
	}
	public String getTraUnique() {
		return traUnique;
	}
	public void setTraUnique(String traUnique) {
		this.traUnique = traUnique;
	}
	public String getTraUniqueDetail() {
		return traUniqueDetail;
	}
	public void setTraUniqueDetail(String traUniqueDetail) {
		this.traUniqueDetail = traUniqueDetail;
	}
	public String getTraMilitary() {
		return traMilitary;
	}
	public void setTraMilitary(String traMilitary) {
		this.traMilitary = traMilitary;
	}
	public String getTraHobby() {
		return traHobby;
	}
	public void setTraHobby(String traHobby) {
		this.traHobby = traHobby;
	}
	public String getTraSpeciality() {
		return traSpeciality;
	}
	public void setTraSpeciality(String traSpeciality) {
		this.traSpeciality = traSpeciality;
	}
	public String getTraManager() {
		return traManager;
	}
	public void setTraManager(String traManager) {
		this.traManager = traManager;
	}
	public String getTraRewarding() {
		return traRewarding;
	}
	public void setTraRewarding(String traRewarding) {
		this.traRewarding = traRewarding;
	}
	public String getTraStructue() {
		return traStructue;
	}
	public void setTraStructue(String traStructue) {
		this.traStructue = traStructue;
	}
	public String getTraLevel() {
		return traLevel;
	}
	public void setTraLevel(String traLevel) {
		this.traLevel = traLevel;
	}
	public String getTraSchool() {
		return traSchool;
	}
	public void setTraSchool(String traSchool) {
		this.traSchool = traSchool;
	}
	public String getTraMajor() {
		return traMajor;
	}
	public void setTraMajor(String traMajor) {
		this.traMajor = traMajor;
	}
	public String getTraMail() {
		return traMail;
	}
	public void setTraMail(String traMail) {
		this.traMail = traMail;
	}
	public String getTraAddr() {
		return traAddr;
	}
	public void setTraAddr(String traAddr) {
		this.traAddr = traAddr;
	}
	public String getTraHome() {
		return traHome;
	}
	public void setTraHome(String traHome) {
		this.traHome = traHome;
	}
	public String getTraLicense1() {
		return traLicense1;
	}
	public void setTraLicense1(String traLicense1) {
		this.traLicense1 = traLicense1;
	}
	public String getTraLicense2() {
		return traLicense2;
	}
	public void setTraLicense2(String traLicense2) {
		this.traLicense2 = traLicense2;
	}
	public String getTraLicense3() {
		return traLicense3;
	}
	public void setTraLicense3(String traLicense3) {
		this.traLicense3 = traLicense3;
	}
	public String getTraLang1() {
		return traLang1;
	}
	public void setTraLang1(String traLang1) {
		this.traLang1 = traLang1;
	}
	public String getTraLang2() {
		return traLang2;
	}
	public void setTraLang2(String traLang2) {
		this.traLang2 = traLang2;
	}
	public String getTraLang3() {
		return traLang3;
	}
	public void setTraLang3(String traLang3) {
		this.traLang3 = traLang3;
	}
	public String getTraAward1() {
		return traAward1;
	}
	public void setTraAward1(String traAward1) {
		this.traAward1 = traAward1;
	}
	public String getTraAward2() {
		return traAward2;
	}
	public void setTraAward2(String traAward2) {
		this.traAward2 = traAward2;
	}
	public String getTraAward3() {
		return traAward3;
	}
	public void setTraAward3(String traAward3) {
		this.traAward3 = traAward3;
	}
	public String getTraAward4() {
		return traAward4;
	}
	public void setTraAward4(String traAward4) {
		this.traAward4 = traAward4;
	}
	public String getTraPhoto() {
		return traPhoto;
	}
	public void setTraPhoto(String traPhoto) {
		this.traPhoto = traPhoto;
	}
	public String getTraComment() {
		return traComment;
	}
	public void setTraComment(String traComment) {
		this.traComment = traComment;
	}
	public String getTraID_FK() {
		return traID_FK;
	}
	public void setTraID_FK(String traID_FK) {
		this.traID_FK = traID_FK;
	}
	
	
	
	

}

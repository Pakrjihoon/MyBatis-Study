package com.bjd.phonebook.vo;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Calendar;

public class Phone {
	private int no;
	private String name, phone, gender, profile;
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	private Date birthDate;
	private Timestamp regdate;
	Calendar now = Calendar.getInstance();
	int year = now.get(Calendar.YEAR);
	
	public Phone() {
		
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public String getRealGender() {
		return gender.equals("M") ? "남자" : "여자";
	}
	
	public String getFirst() {
		return phone.substring(0,3);
	}
	public String getSecond() {
		return phone.substring(3,phone.length()-4);
	}
	public String getLast() {
		return phone.substring(phone.length()-4);
	}
	public String getIncludeNumber() {
		return getFirst()+"-"+ getSecond()+"-"+ getLast();
	}
	
	private int getTime(int type) {
		Calendar birthDate = Calendar.getInstance();
		birthDate.setTime(this.birthDate);
		return birthDate.get(type);
	}
	public int getBirthYear() {
		return getTime(Calendar.YEAR);
	}
	public int getBirthMonth() {
		return getTime(Calendar.MONTH)+1;
	}
	public int getBirthDay() {
		return getTime(Calendar.DATE);
	}
	public String getFormatBirthDate() {
		return getBirthYear()+"년"+
				getBirthMonth()+"월"+
				getBirthDay()+"일";
	}
	public int getRealAge() {
		return year - getTime(Calendar.YEAR)+1;
	}
}

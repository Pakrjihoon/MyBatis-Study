package com.bjd.phonebook.vo;

import java.sql.Date;
import java.util.Calendar;

public class Phone {
	private int no;
	private String name;
	private String phone;
	private String gender;
	private Date birthDate;
	private Date regDate;
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
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getRealGender() {
		return gender.equals("M") ? "남자" : "여자";
	}
	public String getIncludeNumber() {
		if(phone.length()==11) {
			return 
			phone = phone.substring(0,3) + "-" + phone.substring(3,7) + "-" + phone.substring(7,11);
		}else {
			return
			phone = phone.substring(0,3) + "-" + phone.substring(3,6) + "-" + phone.substring(6,10);
		}		
	}
	public String getFirst() {
		return phone.substring(0,3);
	}
	public String getSecond() {
		if(phone.length()==11) {
		return phone.substring(3,7);}
		else {
			return phone.substring(3,6);
		}
	}
	public String getLast() {
		if(phone.length()==11) {
			return phone.substring(7,11);}
			else {
				return phone.substring(6,10);
			}
	}
	
	public int getRealAge() {
		// Calendar 객체 얻기
		Calendar birthDate = Calendar.getInstance();
		// this. 을 붙여주어야한다. 같은 이름을 쓸 수있음
		birthDate.setTime(this.birthDate);
		return year - birthDate.get(Calendar.YEAR);
	}
	public int getBirthYear() {
		//Calendar객체 얻기
		Calendar birthDate = Calendar.getInstance();
		birthDate.setTime(this.birthDate);
			
		return birthDate.get(Calendar.YEAR);
	}
	public int getBirthMonth() {
		//Calendar객체 얻기
		Calendar birthDate = Calendar.getInstance();
		birthDate.setTime(this.birthDate);
			
		return birthDate.get(Calendar.MONTH)+1;
	}
	public int getBirthDay() {
		//Calendar객체 얻기
		Calendar birthDate = Calendar.getInstance();
		birthDate.setTime(this.birthDate);
			
		return birthDate.get(Calendar.DATE);
	}
}

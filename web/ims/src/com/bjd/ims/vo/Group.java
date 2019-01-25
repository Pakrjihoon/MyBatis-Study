package com.bjd.ims.vo;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Group {
	private int groupId;
	private String name;
	private Date debutDate;
	
	public Group() {
		
	}

	public int getGroupId() {
		return groupId;
	}

	public void setGroupId(int groupId) {
		this.groupId = groupId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getDebutDate() {
		return debutDate;
	}

	public void setDebutDate(Date debutDate) {
		this.debutDate = debutDate;
	}
	// 우리가 필요한 getter를 만듦
	public String getFormatRealDebutDate() {
		SimpleDateFormat day = new SimpleDateFormat("YYYY년 M월 d일");
		return day.format(debutDate);
	}
	public int getDebutYear() {
		// Calendar 객체 얻기
		Calendar debutDate = Calendar.getInstance();
		// 데뷔일로 변경
		// this. 을 붙여주어야한다. 같은 이름을 쓸 수있음
		debutDate.setTime(this.debutDate);
		return debutDate.get(Calendar.YEAR);
	}
	public int getDebutMonth() {
		Calendar debutDate = Calendar.getInstance();
		debutDate.setTime(this.debutDate);
		return debutDate.get(Calendar.MONTH);
	}
	public int getDebutDay() {
		Calendar debutDate = Calendar.getInstance();
		debutDate.setTime(this.debutDate);
		return debutDate.get(Calendar.DATE);
	}
}

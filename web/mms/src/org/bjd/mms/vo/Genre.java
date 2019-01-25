package org.bjd.mms.vo;

public class Genre {
	
	private int no;
	private String name;
	
	public Genre() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		return no+") " + name;
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
	
}

package org.bjd.model1.vo;

import java.sql.Timestamp;

public class Article {
	//조인한 컬럼들도 멤버필드로 추가
	
	
	private int no, memberNo, hit, likesNum, repliesNum;
	private String title, contents, profile, nickname;
	private Timestamp regDate;
	
	public Article() {
		
	}
	public Article(String title, String contents, int memberNo) {
		this.title = title;
		this.contents = contents;
		this.memberNo = memberNo;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	public int getLikesNum() {
		return likesNum;
	}
	public void setLikesNum(int likesNum) {
		this.likesNum = likesNum;
	}
	public int getRepliesNum() {
		return repliesNum;
	}
	public void setRepliesNum(int repliesNum) {
		this.repliesNum = repliesNum;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
}

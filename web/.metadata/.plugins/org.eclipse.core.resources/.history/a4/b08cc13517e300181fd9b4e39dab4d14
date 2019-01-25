package org.bjd.model1.dao;

import org.apache.ibatis.session.SqlSession;
import org.bjd.model1.util.SqlSessionUtil;
import org.bjd.model1.vo.Member;

public class MembersDAO {
	
	public static Member selectLogin (Member member) {
		Member loginMember = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			loginMember = session.selectOne("members.selectLogin", member);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} // try~catch~finally end
		return loginMember;
	}//selectLogin() end 
	public static int selectCheckId(String id) {
		int count = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			count = session.selectOne("members.selectCheckId",id); 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return count;
	}
	public static int selectCheckNickname(String nickname) {
		int count = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			count = session.selectOne("members.selectCheckNickname",nickname); 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return count;
	}
	public static int insert(Member member) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("members.insert",member);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
}//MembersDAO end

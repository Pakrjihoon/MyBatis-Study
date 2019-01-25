package com.hermes.hanbakwi.dao;

import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.util.SqlSessionUtil;
import com.hermes.hanbakwi.vo.User;

public class UsersDAO {
	
	public static User selectLogin (User user) {
		User loginMember = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			loginMember = session.selectOne("users.selectLogin", user);
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
			count  = session.selectOne("users.selectCheckId",id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return count;
	}
	
	public static int insert(User user) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("users.insert",user);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
	public static int searchId(String email) {
		int result = 0;
		SqlSession session= null;
		try {
			session= SqlSessionUtil.getSession();
			result = session.selectOne("users.searchId", email);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return result;
	}
}//UsersDAO end

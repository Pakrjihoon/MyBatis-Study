package com.bjd.phonebook.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bjd.phonebook.util.SqlSessionUtil;
import com.bjd.phonebook.vo.Phone;

public class PhoneBookDAO {
	
	public static int update(Phone phone) {
		int result = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			result = session.update("phonebooks.update",phone);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return result;
	}

	public static int insert(Phone phone) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("phonebooks.insert", phone);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
	public static int delete(int phone) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("phonebooks.delete", phone);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
	public static List<Phone> selectList() {
		List<Phone> phone = null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			phone = session.selectList("phonebooks.selectList");
		} catch(Exception e){
			e.printStackTrace();
		}finally {
			session.close();
		}
		return phone;
	}
	public static Phone selectOne(int no) {
		Phone phone = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			phone = session.selectOne("phonebooks.selectOne",no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return phone;
		
	}
	
}

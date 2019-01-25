package com.bjd.phonebook.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bjd.phonebook.util.SqlSessionUtil;
import com.bjd.phonebook.vo.PageVO;
import com.bjd.phonebook.vo.Phone;

public class PhonebookDAO {
	
	public static int insert(Phone phone) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("phonebook.insert",phone);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
	public static List<Phone> selectList(PageVO page) {
		List<Phone> list = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			list = session.selectList("phonebook.selectList", page);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
	public static int selectTotal() {
		int total = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			total = session.selectOne("phonebook.selectTotal");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return total;
	}
}
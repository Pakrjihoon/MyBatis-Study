package com.bjd.employee.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bjd.employee.util.SqlSessionUtil;
import com.bjd.employee.vo.PageVO;
import com.bjd.employee.vo.Employee;

public class EmployeeDAO {
	
	
	public static List<Employee> selectList(PageVO page) {
		List<Employee> list = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			list = session.selectList("employee.selectList", page);
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
			total = session.selectOne("employee.selectTotal");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return total;
	}
}
package com.bjd.ims.dao;

import java.util.List;

import javax.websocket.Session;

import org.apache.ibatis.session.SqlSession;

import com.bjd.ims.util.SqlSessionUtil;
import com.bjd.ims.vo.Idol;

import sun.security.x509.IPAddressName;

public class IdolsDAO {
	
	public static int update(Idol idol) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.update("idols.update",idol);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
	public static int delete(int idol) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.delete("idols.delete",idol);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
	public static int insert(Idol idol) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("idols.insert",idol);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return result;
	}
	
	public static List<Idol> selectList() {
		List<Idol> idol = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			idol = session.selectList("idols.selectList");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return idol;
		
	}
}

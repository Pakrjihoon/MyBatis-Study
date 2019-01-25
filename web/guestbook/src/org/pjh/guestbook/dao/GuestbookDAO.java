package org.pjh.guestbook.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.pjh.guestbook.util.SqlSessionUtil;
import org.pjh.guestbook.vo.Guest;
import org.pjh.guestbook.vo.PageVO;

public class GuestbookDAO {
	public static int insert(Guest guest) {
		int result = 0 ;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("guestbook.insert",guest);
		} catch (Exception e) {
			// 디버깅
			e.printStackTrace();
		}finally {
			session.close();
		} // try~catch~finally end
		return result;
	}
	public static List<Guest> selectList(PageVO pageVO) {
		List<Guest> guests = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			guests = session.selectList("guestbook.selectList", pageVO);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return guests;
	}
	public static int delete(int guest) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.delete("guestbook.delete",guest);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
	public static Guest selectOne(int no) {
		Guest guest = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			guest = session.selectOne("guestbook.selectOne",no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return guest;
	}
	public static int selectTotal() {
		int total = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			total = session.selectOne("guestbook.selectTotal");
		} catch (Exception e) {
		} finally {
			session.close();
		}
		return total; 
	}
	public static int update(Guest guest) {
		int result = 0;
		SqlSession session =null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.update("guestbook.update",guest);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
}

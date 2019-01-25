package com.bjd.book.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bjd.book.util.SqlSessionUtil;
import com.bjd.book.vo.Book;
import com.bjd.book.vo.PageVO;


public class BookDAO {
	public static List<Book> selectList(PageVO page) {
		List<Book> list = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			list = session.selectList("book.selectList", page);
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
			total = session.selectOne("book.selectTotal");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return total;
	}
	public static int insert(Book book) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("book.insert",book);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
	public static int delete(int book) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.delete("book.delete",book);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
}

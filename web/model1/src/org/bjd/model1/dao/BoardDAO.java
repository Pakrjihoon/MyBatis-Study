package org.bjd.model1.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.bjd.model1.util.SqlSessionUtil;
import org.bjd.model1.vo.Article;
import org.bjd.model1.vo.PageVO;

public class BoardDAO {
	public static int insert(Article article) {
		int result = 0;
		SqlSession session =null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("board.insert", article);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} // try~catch~finally end
		
		return result;
	}
	public static Article selectOne(int no) {
		Article article = null;
		SqlSession session =null;
		try {
			session = SqlSessionUtil.getSession();
			article = session.selectOne("board.selectOne", no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} // try~catch~finally end
		return article;
		
	}
	public static List<Article> selectList(PageVO pageVO) {
		List<Article> list = null;
		SqlSession session =null;
		try {
			session = SqlSessionUtil.getSession();
			list = session.selectList("board.selectList", pageVO);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} // try~catch~finally end
		return list;
	}
	public static int selectTotal() {
		int total = 0;
		SqlSession session =null;
		try {
			session = SqlSessionUtil.getSession();
			total = session.selectOne("board.selectTotal");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} // try~catch~finally end
		return total;
	}
	public static int updateHit(int no) {
		int result = 0;
		SqlSession session =null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.update("board.updateHit",no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} // try~catch~finally end
		return result;
	}
}

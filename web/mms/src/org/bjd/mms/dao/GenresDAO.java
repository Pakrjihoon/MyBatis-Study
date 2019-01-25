package org.bjd.mms.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.bjd.mms.util.SqlSessionUtil;
import org.bjd.mms.vo.Genre;

public class GenresDAO {
	
	public static List<Genre> selectList() {
		List<Genre> list = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			list = session.selectList("genres.selectList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return list;
	}//selectList() end
	
}







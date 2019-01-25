package org.bjd.mms.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.bjd.mms.util.SqlSessionUtil;
import org.bjd.mms.vo.Movie;

public class MoviesDAO {
	
	public static List<Movie> selectList() {
		List<Movie> movies = null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			movies = session.selectList("movies.selectList");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return movies;
	}

}

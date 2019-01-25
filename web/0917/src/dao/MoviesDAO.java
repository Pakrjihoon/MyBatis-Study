package dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;

import util.SqlSessionUtil;
import vo.Movie;


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
	public static int delete(int no) {
		int result = 0;
		SqlSession session = null;
		try {
			session=SqlSessionUtil.getSession();
			result = session.delete("movies.delete",no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
	public static int insert(Movie movie) {
		int result = 0 ;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("movies.insert",movie);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
}

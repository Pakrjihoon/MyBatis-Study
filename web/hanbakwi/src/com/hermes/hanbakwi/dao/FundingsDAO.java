package com.hermes.hanbakwi.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.util.SqlSessionUtil;
import com.hermes.hanbakwi.vo.Funding;

public class FundingsDAO {

	public static List<Funding> selectList(){
		
		List<Funding> list = null;
		SqlSession session= null;
		
		try {
			session= SqlSessionUtil.getSession();
			list= session.selectList("fundings.selectList");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return list;
}
	

	
	

}

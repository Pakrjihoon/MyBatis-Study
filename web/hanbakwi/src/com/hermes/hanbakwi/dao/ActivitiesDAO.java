package com.hermes.hanbakwi.dao;

import org.apache.ibatis.session.SqlSession;

import com.hermes.hanbakwi.util.SqlSessionUtil;
import com.hermes.hanbakwi.vo.Activity;
import com.hermes.hanbakwi.vo.Region;
import com.hermes.hanbakwi.vo.User;

public class ActivitiesDAO {
	public static int insertActivities(Activity activity) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("activities.insertActivities",activity);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
	public static Activity selectUserRegion(Activity activity) {
		Activity activities = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			activities = session.selectOne("activities.selectUserRegion",activity);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return activities;
	}
}//ActivitiesDAO end

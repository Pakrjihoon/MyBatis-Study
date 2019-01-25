package com.bjd.ims.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bjd.ims.util.SqlSessionUtil;
import com.bjd.ims.vo.Group;

public class GroupsDAO {
	public static int update(Group group) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.update("groups.update", group);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
	public static Group selectOne(int groupId) {
		Group group = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			group = session.selectOne("groups.selectOne", groupId);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return group;
	}
	public static int insert(Group group) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("groups.insert", group);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
	
	public static List<Group> selectList() {
		List<Group> group = null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			group = session.selectList("groups.selectList");
		} catch(Exception e){
			e.printStackTrace();
		}finally {
			session.close();
		}
		return group;
	}
	public static int delete(int group) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.delete("groups.delete",group);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
}

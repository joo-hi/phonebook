package com.jbp.phonebook.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.jbp.phonebook.util.SqlSessionUtil;
import com.jbp.phonebook.vo.Phone;



public class PhonebookDAO {

	
	public static List<Phone> selectList() {
		
		List<Phone> phones = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			// 받는 값 꼭 기입
			phones = session.selectList("phonebook.selectList");
		}
		catch(Exception e) {
			e.printStackTrace();
		} 
		finally {
			session.close();
		} // try~catch~finally
		
		return phones;
	}
	
	public static int insert(Phone phone) {
		
		int result = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			// 받는 값 꼭 기입
			result = session.insert("phonebook.insert", phone);
		}
		catch(Exception e) {
			e.printStackTrace();
		} 
		finally {
			session.close();
		} // try~catch~finally
		
		return result;
	}
	
	public static int delete(int no) {
		
		int result = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			// 받는 값 꼭 기입
			result = session.delete("phonebook.delete",no);
		}
		catch(Exception e) {
			e.printStackTrace();
		} 
		finally {
			session.close();
		} // try~catch~finally
		return result;
	}
	
	public static Phone selectOne(int no) {
		
		Phone phones = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			// 받는 값 꼭 기입
			phones = session.selectOne("phonebook.selectOne",no);
		}
		catch(Exception e) {
			e.printStackTrace();
		} 
		finally {
			session.close();
		} // try~catch~finally
		
		return phones;
	}
	
	public static int update(Phone phone) {
		
		int result = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			// 받는 값 꼭 기입
			result = session.update("phonebook.update", phone);
		}
		catch(Exception e) {
			e.printStackTrace();
		} 
		finally {
			session.close();
		} // try~catch~finally
		
		return result;
	}
		
}

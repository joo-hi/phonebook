package com.jbp.phonebook.util;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionUtil {

	// SqlSessionUtil class의 멤버필드로 선언하고, 
	// static 변수로까지 선언해주면,
	// 모든 메소드가 함께 쓸 수 있음@~@
	private static SqlSessionFactory factory;
	
	static {
		Reader reader;
		try {
			reader = Resources.getResourceAsReader("com/jbp/phonebook/config/mybatis-config.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public static SqlSession getSession() {
				
		return factory.openSession(true);
	}

}

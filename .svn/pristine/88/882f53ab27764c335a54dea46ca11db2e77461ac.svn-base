package com.bigbullcar.utils;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

/**
 * mybatis会话工厂：提供sqlSession对象和关闭sqlSession
 * 
 * @author zxt 2016-11-4
 * 
 */

public class MybatisSessionFactory {

	// 私有化会话工厂
	private static SqlSessionFactory factory;

	// 初始化静态对象
	static {
		try {
			// 初始化会话工厂
			InputStream inputStream = Resources
					.getResourceAsStream("mybatis-config.xml");
			factory = new SqlSessionFactoryBuilder().build(inputStream);

		} catch (IOException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}
	
	//会话工厂提供sqlSession对象
	public static SqlSession createSqlSession(){
		//由会话工厂打开sqlSession
		SqlSession sqlSession = factory.openSession(false);//关闭自动提交
		return sqlSession;
	}
	
	//会话工厂提供关闭sqlSession
	public static void closeSqlSession(SqlSession sqlSession){
		//判断SqlSession对象是否为null
		if(null!=sqlSession){
			sqlSession.close();
		}
		
	}
}

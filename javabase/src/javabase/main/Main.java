package javabase.main;
import java.io.InputStream;
import java.io.Reader;
import java.sql.*;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionException;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import javabase.main.*;
import mybatis.javabase.*;


public class Main {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("Hello world");
		
		
		/* testOther class */
		TestOther cOther = new TestOther();
		cOther.TestOtherMain();
		
		/* test for JDBC */
		JdbcTest cJdbcTest = new JdbcTest();
		cJdbcTest.JdbcTest_main();
		
		/* mybatis测试 */
		System.out.println("----------This is test for mybatis-----------");
		String strreSource = "conf.xml";
		InputStream cInputStream = Main.class.getClassLoader().getResourceAsStream(strreSource);
		
		SqlSessionFactory cSessionFactory = new SqlSessionFactoryBuilder().build(cInputStream);
		//Reader cReader = Resources.getResourceAsReader(strreSource);
		SqlSession cSession = cSessionFactory.openSession();
		
		
		String strStatement = "mybatis.javabase.mybatisDemo.getUser";
		Mybatistest cTest = cSession.selectOne(strStatement, 1);
		System.out.println(cTest);
		
	}

	/* (non-Java-doc)
	 * @see java.lang.Object#Object()
	 */
	public Main() {
		super();
	}

}
package com.jh.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector {

	public static Connection getConnection() throws Exception{
		Connection con = null;
		
		 String user="user12"; 
		/* String user="user01"; */
		String password ="user12"; 
		/* String password = "user01"; */
		 String url = "jdbc:oracle:thin:@211.238.142.32:1521:xe";  /* 테이블 없는 경우  id password url 확인  */
		/* String url = "jdbc:oracle:thin:@localhost:1521:xe"; */
		String driver = "oracle.jdbc.driver.OracleDriver";
		
		//2. driver 메모리에 로딩 
		Class.forName(driver);
		
		//3. Connection
		con = DriverManager.getConnection(url, user, password);
		
		
		return con;
	}
	
}

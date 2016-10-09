package com.tcs.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DatabaseUtils {

	
//	final static public String DRIVER = "oracle.jdbc.driver.OracleDriver";
//	final static public String PASS = "E1082926";
//	final static public String URL = "jdbc:oracle:thin:@inchnilpdb03.India.TCS.com:1521:JavaDB03";
//	final static public String USER = "E1082926";
//	private static Connection conn =null;
//	
//	
//	public static Connection getConnection() throws ClassNotFoundException, SQLException{
//		
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//			conn =DriverManager.getConnection( URL, USER, PASS );
//		
//		return conn;
//		
//	}
	
	private static final String driver = "oracle.jdbc.driver.OracleDriver";
	private static final String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String username =  "GALINO"; 
	private static final String password = "a"; 

	private static Connection connection;

	public static Connection getConnection() throws ClassNotFoundException, SQLException{
		
		//if(connection==null || connection.isClosed()){
			Class.forName(driver);
			connection = DriverManager.getConnection(url, username, password);
		//}
		return connection;
		
	}
	
	public static void closeConnection(Connection conn) throws SQLException{
		if(conn!=null){
			conn.close();
		}
	}
	
	public static void closeStatement(PreparedStatement pstmt) throws SQLException{
		if(pstmt!=null){
			pstmt.close();
		}
	}
	
}



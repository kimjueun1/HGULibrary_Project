//package com.hgu.library.util;
//
//import javax.naming.Context;
//import javax.naming.InitialContext;
//import javax.naming.NamingException;
//import javax.sql.DataSource;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
//
//public class DBConnectionUtility {
//	public static Connection getConnection(){
//		Connection con=null;
//		try{
//			Class.forName("com.mysql.jdbc.Driver");
//			con= DriverManager.getConnection("jdbc:Mysql://walab.handong.edu:3306/csr_library?useSSL=false,  csr_library, creationlib123");
//		} catch (ClassNotFoundException | SQLException e) {
//			e.printStackTrace();
//		}
//		return con;
//	}
//	public static void main(String[] args) {
//		Connection con = null;
//
////		String server = "localhost"; // MySQL 서버 주소
//		String database = "csr_library"; // MySQL DATABASE 이름
//		String user_name = "csr_library"; //  MySQL 서버 아이디
//		String password = "creationlib123"; // MySQL 서버 비밀번호
//
//		// 1.드라이버 로딩
//		try {
//			Class.forName("com.mysql.cj.jdbc.Driver");
//		} catch (ClassNotFoundException e) {
//			System.err.println(" !! <JDBC 오류> Driver load 오류: " + e.getMessage());
//			e.printStackTrace();
//		}
//		// 2.연결
//		try {
//			con = DriverManager.getConnection("jdbc:Mysql://walab.handong.edu:3306" + "/" + database + "?useSSL=false", user_name, password);
//			System.out.println("정상적으로 연결되었습니다.");
//		} catch(SQLException e) {
//			System.err.println("con 오류:" + e.getMessage());
//			e.printStackTrace();
//		}
//
//		// 3.해제
//		try {
//			if(con != null)
//				con.close();
//		} catch (SQLException e) {}
//	}
//
//}
//

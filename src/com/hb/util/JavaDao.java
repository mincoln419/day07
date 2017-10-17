package com.hb.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class JavaDao {

	//-게시판
	//1.기본 기능: Create Read Update Delete
	//2.데이터베이스 접속
	
	private String url="jdbc:oracle:thin:@203.236.209.206:1521:xe";
	private String driver="oracle.jdbc.driver.OracleDriver";
	private String id="scott";
	private String pw="tiger";
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private void getConnection(){
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url,id,pw);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
	}

	public ArrayList<JavaDto> getSelectAll(){
		
		String sql="select * from guest02";
		ArrayList<JavaDto> alist=new ArrayList<JavaDto>();
		try {
			getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				JavaDto bean=new JavaDto();
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
				alist.add(bean);
			}			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{			
				try {
					if(rs!=null)rs.close();
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		
		return alist;
	}
	
	
//	public static void testDao(){
//		JavaDao dao=new JavaDao();
//		ArrayList<JavaDto> list=dao.getSelectAll();
//		for(int i=0; i<list.size();i++){
//			JavaDto dto=list.get(i);
//			System.out.println("사번:"+dto.getSabun());
//			System.out.println("이름:"+dto.getName());
//			System.out.println("날짜:"+dto.getNalja());
//			System.out.println("금액:"+dto.getPay());
//			
//		}
//		
//		
//	}
//	
	
	public void insertOne(int sabun, String name, int pay){
		String sql="insert into guest02 values(?,?,sysdate,?)";
		
		
		try {
			getConnection();
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setInt(1, sabun);
			pstmt.setString(2, name);
			pstmt.setInt(3, pay);		
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
		
				try {
					if(rs!=null)rs.close();
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		
		}
		
		
		
		
	}
	
	
	public JavaDto selectOne(String idx){
		int sabun=Integer.parseInt(idx);
		String sql="select * from guest02 where sabun=?";
		JavaDto bean=new JavaDto();
		
		try {
			getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			rs=pstmt.executeQuery();
			if(rs.next()){
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
			}		
			
			pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
		}
		
		return bean;
		
		
	}
	
	
	
}

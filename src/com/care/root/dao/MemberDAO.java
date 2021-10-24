package com.care.root.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.care.root.dto.MemberDTO;

public class MemberDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public MemberDAO() throws SQLException{
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "spring";
		String pw = "spring";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, id, pw);
			System.out.println("연결완료!");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		
		
	}

	public ArrayList<MemberDTO> selectAll() {
		String sql = "select * from member_jsp";
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	public int insert(MemberDTO dto) {
		String sql = "insert into member_jsp(id,pwd,name,addr) values(?,?,?,?)";
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPwd());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getAddr());
			result = ps.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public MemberDTO memberInfo(String id) {
		String sql = "select * from member_jsp where id=?";
		MemberDTO dto = null;
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
}

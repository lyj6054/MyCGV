package com.mycgv.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.mycgv.vo.CgvMemberVO;

public class CgvMemberDAO extends DBConn{
	/**
	 *  Content : 회원 상세 정보
	 **/
	public CgvMemberVO getContent(String id){
		CgvMemberVO vo=new CgvMemberVO();
		try {
			String sql="select id, name, gender, addr , cp, job, hobby_list from CGVMEMBER where id=?";
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			
			ResultSet rs=pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setId(rs.getString(1));
				vo.setName(rs.getString(2));
				vo.setGender(rs.getString(3));
				vo.setAddr(rs.getString(4));
				vo.setCp(rs.getString(5));
				vo.setJob(rs.getString(6));
				vo.setHobby_list(rs.getString(7));
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return vo;
	}
	
	/**
	 *  List : 전체 회원 리스트
	 **/
	public ArrayList<CgvMemberVO> getList(){
		ArrayList<CgvMemberVO> list = new ArrayList<CgvMemberVO>();
		try {
			String sql = " select rownum rno,id,name,cp,gender,to_char(mdate,'yyyy.mm.dd') mdate " + 
					" from (select * from cgvmember order by mdate desc)";
			getPreparedStatement(sql);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				CgvMemberVO vo=new CgvMemberVO();
				vo.setRno(rs.getInt(1));
				vo.setId(rs.getString(2));
				vo.setName(rs.getString(3));
				vo.setCp(rs.getString(4));
				vo.setGender(rs.getString(5));
				vo.setMdate(rs.getString(6));
				
				list.add(vo);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	/**
	 * Select 로그인
	 */
	public int getLogin(CgvMemberVO vo) {
		int result =0;
		try {
			String  sql="select count(*) from cgvmember where id=? and pass=?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPass());
			
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())result=rs.getInt(1);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Insert : 회원가입 
	 */
	public boolean getInsert(CgvMemberVO vo) {
		boolean result=false;
		
		try {
			String sql="insert into cgvmember values(?,?,?,?,?,?,?,?,?,?,?,?,sysdate)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPass());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getGender());
			pstmt.setString(5, vo.getEmail());
			pstmt.setString(6, vo.getEmail_agr());
			pstmt.setString(7, vo.getAddr());
			pstmt.setString(8, vo.getHp());
			pstmt.setString(9, vo.getCp());
			pstmt.setString(10, vo.getHobby_list());
			pstmt.setString(11, vo.getJob());
			pstmt.setString(12, vo.getIntro());
			
			int val = pstmt.executeUpdate();
			if(val!=0) {result=true;}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
}

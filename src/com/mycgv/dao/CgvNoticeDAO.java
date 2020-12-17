package com.mycgv.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.mycgv.vo.CgvNoticeVO;

public class CgvNoticeDAO extends DBConn{
	
	/**
	 * Update : ��ȸ�� ������Ʈ
	 */
	public void getUpdateHits(String nid) {
		try {
			String sql="update cgvnotice set nhits=nhits+1 where nid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, nid);
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 *  Delete : �������� ����
	 */
	public boolean getDelete(String nid) {
		boolean result=false;
		try {
			String sql="delete from cgvnotice where nid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, nid);
			int val=pstmt.executeUpdate();
			if(val!=0) result=true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 *  Update :�������� ������Ʈ
	 */
	public boolean getUpdate(CgvNoticeVO vo) {
		boolean result = false;
		try {
			String sql="update cgvnotice set ntitle=?,ncontent=? where nid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getNtitle());
			pstmt.setString(2, vo.getNcontent());
			pstmt.setString(3, vo.getNid());
			int val=pstmt.executeUpdate();
			if(val !=0) result=true;
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 *  Select : �������� ������ ��������
	 */
	public CgvNoticeVO getContent(String nid) {
		CgvNoticeVO vo=new CgvNoticeVO();
		try {
			String sql=" select nid, ntitle, ncontent, to_char(ndate,'yyyy.mm.dd') ndate,nhits,nfile,nsfile from cgvnotice where nid= ?";
			getPreparedStatement(sql);
			pstmt.setString(1, nid);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()) {
				vo.setNid(rs.getString(1));
				vo.setNtitle(rs.getString(2));
				vo.setNcontent(rs.getString(3));
				vo.setNdate(rs.getString(4));
				vo.setNhits(rs.getInt(5));
				vo.setNfile(rs.getString(6));
				vo.setNsfile(rs.getString(7));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	/**
	 *  Select : �������� ����Ʈ ��������
	 */
	public ArrayList<CgvNoticeVO> getList(){
		ArrayList<CgvNoticeVO> list= new ArrayList<CgvNoticeVO>();
		try {
			String sql=" select rownum rno, nid, ntitle,  to_char(ndate,'yyyy.mm.dd') ndate, nhits " + 
					" from(select * from cgvnotice order by ndate desc)";
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				CgvNoticeVO vo=new CgvNoticeVO();
				vo.setRno(rs.getInt(1));
				vo.setNid(rs.getString(2));
				vo.setNtitle(rs.getString(3));
				vo.setNdate(rs.getString(4));
				vo.setNhits(rs.getInt(5));
				
				list.add(vo);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	};
	
	/**
	 * Insert : �������� �۾���
	 */
	public boolean getInsert(CgvNoticeVO vo) {
		boolean result = false;
		try {
			String sql="insert into cgvnotice values('n_'||sequ_cgvnotice.nextval,?,?,?,?,sysdate,0)";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getNtitle());
			pstmt.setString(2, vo.getNcontent());
			pstmt.setString(3, vo.getNfile());
			pstmt.setString(4, vo.getNsfile());
			
			int val = pstmt.executeUpdate();
			if(val !=0) result= true;
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}
}

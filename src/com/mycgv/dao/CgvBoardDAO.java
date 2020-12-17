package com.mycgv.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.mycgv.vo.CgvBoardVO;

public class CgvBoardDAO extends DBConn {
	
	/**
	 *  Delete : board 삭제
	 */
	public boolean getDelete(String bid) {
		boolean result=false;
		try {
			String sql="delete from cgvboard where bid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, bid);
			int val=pstmt.executeUpdate();
			if(val!=0) result=true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Update : 내용 업데이트
	 */
	public boolean getUpdate(CgvBoardVO vo) {
		boolean result = false;
		try {
			String sql="update cgvboard set btitle=?,bcontent=? where bid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			pstmt.setString(3, vo.getBid());
			
			int val = pstmt.executeUpdate();
			if(val !=0)result=true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 *  Update :조회수 업데이트
	 */
	public void getUpdateHits(String bid) {
		try {
			String sql="update cgvboard set bhits=bhits+1 where bid = ?";
			getPreparedStatement(sql);
			pstmt.setString(1, bid);
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * Select : board 상세내용
	 */
	public CgvBoardVO getContent(String bid) {
		CgvBoardVO vo=new CgvBoardVO();
		try {
			String sql="select bid,btitle,bcontent,bfile,bsfile,to_char(bdate,'yyyy.mm.dd'), bhits from cgvboard where bid=?";
			getPreparedStatement(sql);
			pstmt.setString(1,bid);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()) {
				vo.setBid(rs.getString(1));
				vo.setBtitle(rs.getString(2));
				vo.setBcontent(rs.getString(3));
				vo.setBfile(rs.getString(4));
				vo.setBsfile(rs.getString(5));
				vo.setBdate(rs.getString(6));
				vo.setBhits(rs.getInt(7));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	/**
	 * Select : board전체 리스트
	 */
	public ArrayList<CgvBoardVO> getList(){
		ArrayList<CgvBoardVO> list = new ArrayList<CgvBoardVO>();
		try {
			String sql="select rownum rno,bid,btitle, to_char(bdate,'yyyy,mm,dd'),bhits from (select * from cgvboard order by bdate desc)";
			getPreparedStatement(sql);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				CgvBoardVO vo= new CgvBoardVO();
				vo.setRno(rs.getInt(1));
				vo.setBid(rs.getString(2));
				vo.setBtitle(rs.getString(3));
				vo.setBdate(rs.getString(4));
				vo.setBhits(rs.getInt(5));
				
				list.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 *  Insert : 글쓰기
	 */
	public boolean getInsert(CgvBoardVO vo) {
		boolean result = false;
		try {
			String sql="insert into cgvboard "
					+ " values('b_'||SEQU_CGVBOARD.NEXTVAL,?,?,?,?,sysdate,0)";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			pstmt.setString(3, vo.getBfile());
			pstmt.setString(4, vo.getBsfile());
			
			int val=pstmt.executeUpdate();
			if(val!=0) result=true;
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}
}

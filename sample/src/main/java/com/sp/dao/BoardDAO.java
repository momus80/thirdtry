package com.sp.dao;

import java.util.List;

import com.sp.domain.BoardVO;

public interface BoardDAO {
	//insert
	public int insertBoard(BoardVO vo) throws Exception;
	//update
	public int updateBoard(BoardVO vo) throws Exception;
	//select
	public List<BoardVO> getListAll(int num, int cnt) throws Exception;
	
}

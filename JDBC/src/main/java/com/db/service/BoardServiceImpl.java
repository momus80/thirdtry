package com.db.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;

import com.db.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	private BoardDAO bDao;
	
	@Override
	public void register(BoardVO bVo) throws Exception {
		
		bDao.create(bVo);
		
	}

	@Override
	public BoardVO read(Integer bno) throws Exception {

		return bDao.read(bno);
	
	}

	@Override
	public void modify(BoardVO bVo) throws Exception {
		bDao.update(bVo);
	}

	@Override
	public void remove(Integer bno) throws Exception {

		bDao.delete(bno);
		
	}

	@Override
	public List<BoardVO> listAll() throws Exception {

		return bDao.listAll();
		
	}
}

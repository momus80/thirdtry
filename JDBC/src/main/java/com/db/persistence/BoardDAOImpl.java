package com.db.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Inject
	private SqlSession sqlsession;
	private static String namespace = "org.zerock.mapper.BoardMapper";
	
	@Override
	public void create(BoardVO bVo) throws Exception {
		sqlsession.insert(namespace + ".create", bVo);
	}

	@Override
	public BoardVO read(Integer bno) throws Exception {
		return sqlsession.selectOne(namespace + ".read", bno);
	}

	@Override
	public void update(BoardVO bVo) throws Exception {
		sqlsession.update(namespace + ".update", bVo);
	}

	@Override
	public void delete(Integer bno) throws Exception {
		sqlsession.delete(namespace + ".delete", bno);
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		return sqlsession.selectList(namespace + ".listAll");
	}
	@Override
	public List<BoardVO> listPage(int page) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}

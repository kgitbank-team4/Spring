package com.team4.biz.board.service;

import com.team4.biz.board.dao.BoardDAO;
import com.team4.biz.board.vo.ArticleVO;
import com.team4.biz.board.vo.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
    @Autowired
    BoardDAO boardDAO;
    @Override
    public BoardVO selectBoard(BoardVO vo) throws ClassNotFoundException, SQLException {
        return null;
    }

    @Override
    public List<BoardVO> selectBoardList(BoardVO vo) throws ClassNotFoundException, SQLException {
        return boardDAO.selectList(vo);
    }

    @Override
    public void insertArt(ArticleVO vo) throws ClassNotFoundException, SQLException {

    }

    @Override
    public void deleteArt(ArticleVO vo) throws ClassNotFoundException, SQLException {

    }

    @Override
    public void updateArt(ArticleVO vo) throws ClassNotFoundException, SQLException {

    }

    @Override
    public ArticleVO selectArt(ArticleVO vo) throws ClassNotFoundException, SQLException {
        return null;
    }

    @Override
    public List<ArticleVO> selectArtList(ArticleVO vo) throws ClassNotFoundException, SQLException {
        return null;
    }
}

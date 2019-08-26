package com.team4.biz.board.service;

import com.team4.biz.board.dao.BoardDAO;
import com.team4.biz.board.vo.*;
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
        return boardDAO.select(vo);
    }

    @Override
    public List<BoardVO> selectBoardList(BoardVO vo) throws ClassNotFoundException, SQLException {
        return boardDAO.selectList(vo);
    }

    @Override
    public boolean insertArt(ArticleVO vo) throws ClassNotFoundException, SQLException {
        boardDAO.insert(vo);
        return true;
    }

    @Override
    public boolean deleteArt(ArticleVO vo) throws ClassNotFoundException, SQLException {
        boardDAO.delete(vo);
        return true;
    }

    @Override
    public boolean hideArt(ArticleVO vo) throws ClassNotFoundException, SQLException{
        boardDAO.hide(vo);
        return true;
    }

    @Override
    public boolean updateArt(ArticleVO vo) throws ClassNotFoundException, SQLException {
        boardDAO.update(vo);
        return true;
    }

    @Override
    public ArticleVO selectArt(ArticleVO vo) throws ClassNotFoundException, SQLException {
        return boardDAO.select(vo);
    }

    @Override
    public List<ArticleVO> selectArtList(ArticleVO vo) throws ClassNotFoundException, SQLException {
        return boardDAO.selectList(vo);
    }

    @Override
    public boolean insertComment(CommentsVO vo) throws ClassNotFoundException, SQLException {
        boardDAO.insert(vo);
        return true;
    }

    @Override
    public boolean deleteComment(CommentsVO vo) throws ClassNotFoundException, SQLException {
        boardDAO.delete(vo);
        return true;
    }

    @Override
    public boolean updateComment(CommentsVO vo) throws ClassNotFoundException, SQLException {
        boardDAO.update(vo);
        return true;
    }

    @Override
    public List<CommentsVO> selectComment(CommentsVO vo) throws ClassNotFoundException, SQLException {
        return boardDAO.selectList(vo);
    }

    @Override
    public boolean insertContent(ContentVO vo) throws ClassNotFoundException, SQLException {
        boardDAO.insert(vo);
        return true;
    }

    @Override
    public boolean deleteContent(ContentVO vo) throws ClassNotFoundException, SQLException {
        boardDAO.delete(vo);
        return true;
    }

    @Override
    public boolean updateContent(ContentVO vo) throws ClassNotFoundException, SQLException {
        boardDAO.update(vo);
        return true;
    }

    @Override
    public List<ContentVO> selectContent(ContentVO vo) throws ClassNotFoundException, SQLException {
        return boardDAO.selectList(vo);
    }

    @Override
    public boolean insertVote(VoteVO vo) throws ClassNotFoundException, SQLException {
        boardDAO.insert(vo);
        return true;
    }

    @Override
    public VoteVO selectVote(VoteVO vo) throws ClassNotFoundException, SQLException {
        return boardDAO.select(vo);
    }

}

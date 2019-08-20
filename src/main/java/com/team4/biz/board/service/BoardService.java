package com.team4.biz.board.service;

import com.team4.biz.board.vo.ArticleVO;
import com.team4.biz.board.vo.BoardVO;

import java.sql.SQLException;
import java.util.List;

public interface BoardService {
    public BoardVO selectBoard(BoardVO vo) throws ClassNotFoundException, SQLException;
    public List<BoardVO> selectBoardList(BoardVO vo) throws ClassNotFoundException, SQLException;

    //글관련 서비스
    public void insertArt(ArticleVO vo) throws ClassNotFoundException, SQLException;
    public void deleteArt(ArticleVO vo) throws ClassNotFoundException, SQLException;
    public void updateArt(ArticleVO vo) throws ClassNotFoundException, SQLException;
    public ArticleVO selectArt(ArticleVO vo) throws ClassNotFoundException, SQLException;
    public List<ArticleVO> selectArtList(ArticleVO vo) throws ClassNotFoundException, SQLException;
}

package com.team4.biz.board.service;

import com.team4.biz.board.vo.*;

import java.sql.SQLException;
import java.util.List;

public interface BoardService {
    public BoardVO selectBoard(BoardVO vo) throws ClassNotFoundException, SQLException;
    public List<ArticleVO> selectAllArtList(BoardVO vo) throws ClassNotFoundException, SQLException;
    public List<ArticleVO> selectArtList(BoardVO vo) throws ClassNotFoundException, SQLException;
    public List<ArticleVO> searchArtList(BoardVO vo) throws ClassNotFoundException, SQLException;
    /*public List<BoardVO> selectBoardList(BoardVO vo) throws ClassNotFoundException, SQLException;*/

    //글관련 서비스
    public boolean insertArt(ArticleVO vo) throws ClassNotFoundException, SQLException;
    public boolean deleteArt(ArticleVO vo) throws ClassNotFoundException, SQLException;
    public boolean hideArt(ArticleVO vo) throws ClassNotFoundException, SQLException;
    public boolean updateArt(ArticleVO vo) throws ClassNotFoundException, SQLException;
    public ArticleVO selectArt(ArticleVO vo) throws ClassNotFoundException, SQLException;

    //댓글관련 서비스
    public boolean insertComment(CommentsVO vo) throws ClassNotFoundException, SQLException;
    public boolean deleteComment(CommentsVO vo) throws ClassNotFoundException, SQLException;
    public boolean updateComment(CommentsVO vo) throws ClassNotFoundException, SQLException;
    public List<CommentsVO> selectComment(CommentsVO vo) throws ClassNotFoundException, SQLException;

    //내용관련 서비스
    public boolean insertContent(ContentVO vo) throws ClassNotFoundException, SQLException;
    public boolean deleteContent(ContentVO vo) throws ClassNotFoundException, SQLException;
    public boolean updateContent(ContentVO vo) throws ClassNotFoundException, SQLException;
    public List<ContentVO> selectContent(ContentVO vo) throws ClassNotFoundException, SQLException;

    //추천관련 서비스
    public boolean insertVote(VoteVO vo) throws ClassNotFoundException, SQLException;
    public VoteVO selectVote(VoteVO vo) throws ClassNotFoundException, SQLException;

}

package com.team4.biz.board.service;

import com.team4.biz.board.api.vo.AirVO;
import com.team4.biz.board.vo.*;

import java.sql.SQLException;
import java.util.List;

public interface BoardService {
    public BoardVO selectBoard(BoardVO vo) throws ClassNotFoundException, SQLException;
    public List<ArticleVO> selectAllArtList(BoardVO vo) throws ClassNotFoundException, SQLException;
    public List<ArticleVO> selectArtList(BoardVO vo, int start, int end) throws ClassNotFoundException, SQLException;
    public List<ArticleVO> searchArtList(BoardVO vo) throws ClassNotFoundException, SQLException;
    public List<MypageVO> searchArtListFromUser(MypageVO vo) throws ClassNotFoundException, SQLException;
    public List<MypageVO> searchMyComment(MypageVO vo) throws ClassNotFoundException, SQLException;


    //글관련 서비스
    public boolean insertArt(ArticleVO vo) throws ClassNotFoundException, SQLException;
    public boolean deleteArt(ArticleVO vo) throws ClassNotFoundException, SQLException;
    public boolean hideArt(ArticleVO vo) throws ClassNotFoundException, SQLException;
    public boolean updateArt(ArticleVO vo) throws ClassNotFoundException, SQLException;
    public boolean plusViewCnt(ArticleVO vo) throws ClassNotFoundException, SQLException;
    public ArticleVO selectArt(ArticleVO vo) throws ClassNotFoundException, SQLException;

    //댓글관련 서비스
    public boolean insertComment(CommentsVO vo) throws ClassNotFoundException, SQLException;
    public boolean deleteComment(CommentsVO vo) throws ClassNotFoundException, SQLException;
    public boolean updateComment(CommentsVO vo) throws ClassNotFoundException, SQLException;
    public boolean plusCommentCnt(CommentsVO vo) throws ClassNotFoundException, SQLException;
    public boolean minusCommentCnt(CommentsVO vo) throws ClassNotFoundException, SQLException;
    public List<CommentsVO> selectComment(ArticleVO vo) throws ClassNotFoundException, SQLException;

    //내용관련 서비스
    public boolean insertContent(ContentVO vo) throws ClassNotFoundException, SQLException;
    public boolean deleteContent(ContentVO vo) throws ClassNotFoundException, SQLException;
    public boolean updateContent(ContentVO vo) throws ClassNotFoundException, SQLException;
    public ContentVO selectContent(ArticleVO vo) throws ClassNotFoundException, SQLException;

    //추천관련 서비스
    public boolean insertVote(VoteVO vo) throws ClassNotFoundException, SQLException;
    public boolean selectVote(VoteVO vo) throws ClassNotFoundException, SQLException;
    public boolean plusUpCnt(VoteVO vo ) throws ClassNotFoundException, SQLException;
    //Api서비스
    public List<AirVO> getAirInfo(AirVO vo) throws ClassNotFoundException, SQLException;
    
    //페이징
	public int countArticle(BoardVO vo);

}

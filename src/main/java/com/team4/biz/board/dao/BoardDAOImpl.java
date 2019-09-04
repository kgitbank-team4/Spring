package com.team4.biz.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team4.biz.board.vo.ArticleVO;
import com.team4.biz.board.vo.BoardVO;
import com.team4.biz.board.vo.CommentsVO;
import com.team4.biz.board.vo.ContentVO;
import com.team4.biz.board.vo.MypageVO;
import com.team4.biz.board.vo.VoteVO;
@Repository
public class BoardDAOImpl implements BoardDAO{
    @Autowired
    SqlSession sqlSession;
    private static String namespace = "com.team4.biz.board.dao.BoardDAO";
    @Override
    public BoardVO select(BoardVO vo) {
        return null;
    }

    /*@Override
    public List<BoardVO> selectList(BoardVO vo) {
        return sqlSession.selectList(namespace+".selectBoardList",vo);
    }*/

    @Override
    public void insert(ArticleVO vo) {
    	sqlSession.insert(namespace+".insertArticle", vo);
    }

    @Override
    public void update(ArticleVO vo) {
        sqlSession.update(namespace+".updateArt",vo);
    }

    @Override
    public void updateViewCnt(ArticleVO vo) {
        sqlSession.update(namespace+".updateViewCnt",vo);
    }

    @Override
    public void hide(ArticleVO vo){
        sqlSession.update(namespace+".hideArt",vo);
    }

    @Override
    public void delete(ArticleVO vo) {
        sqlSession.delete(namespace+".deleteArt",vo);
    }

    @Override
    public ArticleVO select(ArticleVO vo) {
        return sqlSession.selectOne(namespace+".getArticle",vo);
    }

    @Override
    public List<ArticleVO> selectAllList(BoardVO vo) {
        return sqlSession.selectList(namespace+".selectAllArtList",vo);
    }

    @Override
    public List<ArticleVO> selectList(BoardVO vo,int start, int end) {
    	Map<String, Object> map = new HashMap<String,Object>();
    	map.put("BoardVO", vo);
    	map.put("start", start);
    	map.put("end", end);
        return sqlSession.selectList(namespace+".selectArtList",map);
    }

    @Override
    public List<ArticleVO> searchList(BoardVO vo) {
        return sqlSession.selectList(namespace+".searchArt",vo);
    }

    @Override
    public List<MypageVO> searchListFromUser(MypageVO vo) {
        return sqlSession.selectList(namespace+".searchArtFromUser",vo);
    }

    @Override
    public void insert(CommentsVO vo) {
        sqlSession.insert(namespace+".insertComment",vo);
    }

    @Override
    public void update(CommentsVO vo) {
        sqlSession.update(namespace+".updateComment",vo);
    }

    @Override
    public void plusCnt(CommentsVO vo) {
        sqlSession.update(namespace+".plusCommentCnt",vo);
    }

    @Override
    public void minusCnt(CommentsVO vo) {
        sqlSession.update(namespace+".minusCommentCnt",vo);
    }

    @Override
    public void delete(CommentsVO vo) {
        sqlSession.delete(namespace+".deleteComment",vo);
    }

    @Override
    public List<CommentsVO> selectCom(ArticleVO vo) {
        return sqlSession.selectList(namespace+".getComments",vo);
    }

    @Override
    public List<CommentsVO> selectList(CommentsVO vo) {
        return null;
    }

    @Override
    public List<MypageVO> searchMyComment(MypageVO vo) {
        return sqlSession.selectList(namespace+".getMyComments",vo);
    }

    @Override
    public void insert(ContentVO vo) {
    	sqlSession.insert(namespace+".insertContent", vo);
    }

    @Override
    public void update(ContentVO vo) {
    }

    @Override
    public void delete(ContentVO vo) {

    }

    @Override
    public ContentVO selectCon(ArticleVO vo) {
        return sqlSession.selectOne(namespace+".getContent",vo);
    }

    @Override
    public List<ContentVO> selectList(ContentVO vo) {
        return null;
    }

    @Override
    public void insert(VoteVO vo) {
        sqlSession.insert(namespace+".insertVote",vo);
    }

    @Override
    public void update(VoteVO vo) {
        sqlSession.update(namespace+".updateVote",vo);
    }

    @Override
    public void delete(VoteVO vo) {

    }

    @Override
    public VoteVO select(VoteVO vo) {
        return sqlSession.selectOne(namespace+".selectVote",vo);
    }

    @Override
    public List<VoteVO> selectList(VoteVO vo) {
        return null;
    }

	@Override
	public int countArt(BoardVO vo) {
		return sqlSession.selectOne(namespace+".getCountArt",vo);
	}
}

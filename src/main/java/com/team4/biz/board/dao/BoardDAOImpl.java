package com.team4.biz.board.dao;

import com.team4.biz.board.vo.*;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
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

    }

    @Override
    public void update(ArticleVO vo) {

    }

    @Override
    public void hide(ArticleVO vo){

    }

    @Override
    public void delete(ArticleVO vo) {

    }

    @Override
    public ArticleVO select(ArticleVO vo) {
        return null;
    }

    @Override
    public List<ArticleVO> selectAllList(BoardVO vo) {
        return sqlSession.selectList(namespace+".selectAllArtList",vo);
    }

    @Override
    public List<ArticleVO> selectList(BoardVO vo) {
        return sqlSession.selectList(namespace+".selectArtList",vo);
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

    }

    @Override
    public void update(CommentsVO vo) {

    }

    @Override
    public void delete(CommentsVO vo) {

    }

    @Override
    public CommentsVO select(CommentsVO vo) {
        return null;
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

    }

    @Override
    public void update(ContentVO vo) {

    }

    @Override
    public void delete(ContentVO vo) {

    }

    @Override
    public ContentVO select(ContentVO vo) {
        return null;
    }

    @Override
    public List<ContentVO> selectList(ContentVO vo) {
        return null;
    }

    @Override
    public void insert(VoteVO vo) {

    }

    @Override
    public void update(VoteVO vo) {

    }

    @Override
    public void delete(VoteVO vo) {

    }

    @Override
    public VoteVO select(VoteVO vo) {
        return null;
    }

    @Override
    public List<VoteVO> selectList(VoteVO vo) {
        return null;
    }
}

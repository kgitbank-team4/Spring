package com.team4.biz.board.dao;

import com.team4.biz.board.vo.*;

import java.util.List;

public interface BoardDAO {
    //게시판
    public BoardVO select(BoardVO vo);
    public List<ArticleVO> selectAllList(BoardVO vo);//글전체목록
    public List<ArticleVO> selectList(BoardVO vo);//게시판별 목록
    public List<ArticleVO> searchList(BoardVO vo);
    public List<ArticleVO> searchListFromUser(BoardVO vo);
    /*public List<BoardVO> selectList(BoardVO vo);*/

    //글 읽기 입력 수정 삭제
    public void insert(ArticleVO vo);//글쓰기
    public void update(ArticleVO vo);//글수정
    public void hide(ArticleVO vo);
    public void delete(ArticleVO vo);//글삭제
    public ArticleVO select(ArticleVO vo);//글읽기

    //댓글 읽기 입력 수정 삭제
    public void insert(CommentsVO vo); //댓글쓰기
    public void update(CommentsVO vo); //댓글수정
    public void delete(CommentsVO vo); //댓글삭제
    public CommentsVO select(CommentsVO vo); //댓글 읽기
    public List<CommentsVO> selectList(CommentsVO vo);//댓글 목록

    //내용 읽기 입력 수정 삭제
    public void insert(ContentVO vo); //내용쓰기
    public void update(ContentVO vo); //내용수정
    public void delete(ContentVO vo); //내용삭제
    public ContentVO select(ContentVO vo); //내용 읽기
    public List<ContentVO> selectList(ContentVO vo);//내용 목록

    //추천 읽기 입력
    public void insert(VoteVO vo); //내용쓰기
    public void update(VoteVO vo); //내용수정
    public void delete(VoteVO vo); //내용삭제
    public VoteVO select(VoteVO vo); //내용 읽기
    public List<VoteVO> selectList(VoteVO vo);//내용 목록

}

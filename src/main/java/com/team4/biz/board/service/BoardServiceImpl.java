package com.team4.biz.board.service;

import com.team4.biz.board.api.service.AirService;
import com.team4.biz.board.api.service.ApiService;
import com.team4.biz.board.api.vo.AirVO;
import com.team4.biz.board.dao.BoardDAO;
import com.team4.biz.board.vo.*;
import com.team4.biz.user.vo.UserVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
    @Autowired
    BoardDAO boardDAO;
    @Autowired
    ApiService apiService;
    @Override
    public BoardVO selectBoard(BoardVO vo) throws ClassNotFoundException, SQLException {
        return boardDAO.select(vo);
    }

    /*@Override
    public List<BoardVO> selectBoardList(BoardVO vo) throws ClassNotFoundException, SQLException {
        return boardDAO.selectList(vo);
    }*/

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
    public boolean plusViewCnt(ArticleVO vo) throws ClassNotFoundException, SQLException {
        boardDAO.updateViewCnt(vo);
        return false;
    }


    @Override
    public ArticleVO selectArt(ArticleVO vo) throws ClassNotFoundException, SQLException {
        return boardDAO.select(vo);
    }

    @Override
    public List<ArticleVO> selectAllArtList(BoardVO vo) throws ClassNotFoundException, SQLException {
        return boardDAO.selectAllList(vo);
    }

    @Override
    public List<ArticleVO> selectArtList(BoardVO vo, int start, int end) throws ClassNotFoundException, SQLException {
        return boardDAO.selectList(vo, start, end);
    }

    @Override
    public List<ArticleVO> searchArtList(BoardVO vo) throws ClassNotFoundException, SQLException {
        return boardDAO.searchList(vo);
    }

    @Override
    public List<MypageVO> searchArtListFromUser(MypageVO vo) throws ClassNotFoundException, SQLException {
        return boardDAO.searchListFromUser(vo);
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
    public boolean plusCommentCnt(CommentsVO vo) throws ClassNotFoundException, SQLException {
        boardDAO.plusCnt(vo);
        return true;
    }

    @Override
    public boolean minusCommentCnt(CommentsVO vo) throws ClassNotFoundException, SQLException {
        boardDAO.minusCnt(vo);
        return true;
    }

    @Override
    public List<CommentsVO> selectComment(ArticleVO vo) throws ClassNotFoundException, SQLException {
        return boardDAO.selectCom(vo);
    }

    @Override
    public List<MypageVO> searchMyComment(MypageVO vo) throws ClassNotFoundException, SQLException {
        return boardDAO.searchMyComment(vo);
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
    public ContentVO selectContent(ArticleVO vo) throws ClassNotFoundException, SQLException {
        return boardDAO.selectCon(vo);
    }

    @Override
    public boolean insertVote(VoteVO vo) throws ClassNotFoundException, SQLException {
        boardDAO.insert(vo);
        return true;
    }

    @Override
    public boolean selectVote(VoteVO vo) throws ClassNotFoundException, SQLException {
        if(boardDAO.select(vo)!=null)
            return true;
        else
            return false;
    }

    @Override
    public boolean plusUpCnt(VoteVO vo) throws ClassNotFoundException, SQLException {
        boardDAO.update(vo);
        return true;
    }

    @Override
    public List<AirVO> getAirInfo(AirVO vo) throws ClassNotFoundException, SQLException {
        return apiService.getAirInfo(vo);
    }

	@Override
	public int countArticle(BoardVO vo) {
		return boardDAO.countArt(vo);
	}

	@Override
	public int countUser() {
		return boardDAO.countUser();
	}

	@Override
	public List<UserVO> selectAllUser() {
		return boardDAO.selectUser();
	}

	@Override
	public List<MypageVO> selectdeleteArt() {
		return boardDAO.selectdeleteArt();
	}

}

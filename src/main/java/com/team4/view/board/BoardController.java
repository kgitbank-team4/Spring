package com.team4.view.board;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.team4.biz.board.api.vo.AirVO;
import com.team4.biz.board.service.BoardService;
import com.team4.biz.board.vo.ArticleVO;
import com.team4.biz.board.vo.BoardVO;
import com.team4.biz.board.vo.CommentsVO;
import com.team4.biz.board.vo.MypageVO;
import com.team4.biz.board.vo.PageMaker;
import com.team4.biz.user.vo.UserVO;



@Controller
public class BoardController {
    @Autowired
    private BoardService boardService;

    @RequestMapping(value = "/home.do")
    public String home(BoardVO vo, Model model) throws SQLException, ClassNotFoundException {
        model.addAttribute("AllArtList", boardService.selectAllArtList(vo));
        return "home";
    }

    @RequestMapping(value = "/freeboard.do")//자유
    public String freeboard(@RequestParam(defaultValue="1") int curPage, BoardVO vo, Model model) throws SQLException, ClassNotFoundException {
    	///페이징
    	int count = boardService.countArticle(vo);
    	//int curPage = 1;
    	PageMaker paging = new PageMaker(count, curPage);
    	int start = paging.getPageBegin();
    	int end = paging.getPageEnd();
    	System.out.println(start +"  "+end);
/*    	model.addAttribute("start", start);
    	model.addAttribute("end", end);*/
    	////
    	System.out.println(vo.getSort());
        System.out.println(vo.getId());
        model.addAttribute("ArtList", boardService.selectArtList(vo, start, end));
    	model.addAttribute("paging", paging);
        return "freeboard";
    }

    @RequestMapping(value = "/hugiboard.do")//후기
    public String hugiboard(BoardVO vo, Model model) throws SQLException, ClassNotFoundException {
        model.addAttribute("ArtList", boardService.selectArtList(vo, 0, 0));
        return "hugiboard";
    }

    @RequestMapping(value = "/qaboard.do")//Q & A
    public String qaboard(BoardVO vo, Model model) throws SQLException, ClassNotFoundException {
        model.addAttribute("ArtList", boardService.selectArtList(vo, 0, 0));
        return "qaboard";
    }

    @RequestMapping(value = "/info.do")//공지사항
    public String infoboard(BoardVO vo, Model model) throws SQLException, ClassNotFoundException {
        model.addAttribute("ArtList", boardService.selectArtList(vo, 0, 0));
        return "info";
    }

    @RequestMapping(value = "/search.do")
    public String searchArt(BoardVO vo, Model model) throws SQLException, ClassNotFoundException {
        model.addAttribute("ArtList", boardService.searchArtList(vo));
        return "freeboard";
    }

    @RequestMapping(value = "/airinfo.do")
    public String getAirInfo(AirVO vo, Model model) throws SQLException, ClassNotFoundException {
        if (vo.getSchIOType().equals("O")) {
            model.addAttribute("AirList", boardService.getAirInfo(vo));
            vo.setSchIOType("I");
            model.addAttribute("AirList2", boardService.getAirInfo(vo));

        } else {
            model.addAttribute("AirList2", boardService.getAirInfo(vo));
            vo.setSchIOType("O");
            model.addAttribute("AirList", boardService.getAirInfo(vo));
        }
        return "airport";
    }

    @RequestMapping(value = "/weatherinfo.do")
    public String getWeatherInfo(@RequestParam("cityname") String cityname, Model model) {
        model.addAttribute("cityname", cityname);
        return "weather";
    }

    @RequestMapping(value = "/mypageboard.do")
    public String getMyArt(MypageVO vo, Model model, HttpSession session) throws SQLException, ClassNotFoundException {
        UserVO uvo = (UserVO) session.getAttribute("user");
        vo.setWriter_id(uvo.getId());
        
        model.addAttribute("myArtList", boardService.searchArtListFromUser(vo));
        model.addAttribute("myCommentList", boardService.searchMyComment(vo));
        return "mypage";
    }

    @RequestMapping(value = "/showfreeboard.do")
    public String getArticle(ArticleVO vo, Model model) throws SQLException, ClassNotFoundException {    	
        model.addAttribute("Article", boardService.selectArt(vo));
        model.addAttribute("Comment", boardService.selectComment(vo));
        return "showfreeboard";
    }

    @RequestMapping(value = "/updateComment.do")
    public String updateComment(CommentsVO vo, Model model) throws SQLException, ClassNotFoundException {
        boardService.updateComment(vo);
        return "redirect:showfreeboard.do?id=" + vo.getArticle_id();
    }

    @RequestMapping(value = "/insertComment.do")
    public String insertComment(CommentsVO vo, Model model) throws SQLException, ClassNotFoundException {
        boardService.insertComment(vo);
        boardService.plusCommentCnt(vo);
        return "redirect:showfreeboard.do?id=" + vo.getArticle_id();
    }

    @RequestMapping(value = "/deleteComment.do")
    public String deleteComment(CommentsVO vo, Model model) throws SQLException, ClassNotFoundException {
        boardService.deleteComment(vo);
        boardService.minusCommentCnt(vo);
        return "redirect:showfreeboard.do?id=" + vo.getArticle_id();
    }


    @RequestMapping(value = "/freewrite.do")
    public String write() throws SQLException, ClassNotFoundException {
        return "writeFree";
    }

    @RequestMapping(value = "/iframe.do")
    public String getIframe() throws SQLException, ClassNotFoundException {
        return "writeEditor";
    }



    @RequestMapping(value = "/writeboard.do", method = RequestMethod.POST)
    public String insertBoard(ArticleVO vo, Model model, HttpSession session) throws ClassNotFoundException, SQLException {
        System.out.println(vo.toString());
        boardService.insertArt(vo);
        model.addAttribute("sort", "lately");
        model.addAttribute("id", vo.getBoard_id());
        return "redirect:freeboard.do";
    }



}

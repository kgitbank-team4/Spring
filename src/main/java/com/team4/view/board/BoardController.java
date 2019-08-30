package com.team4.view.board;


import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.team4.biz.board.api.vo.AirVO;
import com.team4.biz.board.service.BoardService;
import com.team4.biz.board.vo.ArticleVO;
import com.team4.biz.board.vo.BoardVO;
import com.team4.biz.board.vo.ContentVO;
import com.team4.biz.board.vo.MypageVO;
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
    public String freeboard(BoardVO vo, Model model) throws SQLException, ClassNotFoundException {
        System.out.println(vo.getSort());
        System.out.println(vo.getId());
        model.addAttribute("ArtList", boardService.selectArtList(vo));
        return "freeboard";
    }

    @RequestMapping(value = "/hugiboard.do")//후기
    public String hugiboard(BoardVO vo, Model model) throws SQLException, ClassNotFoundException {
        model.addAttribute("ArtList", boardService.selectArtList(vo));
        return "hugiboard";
    }

    @RequestMapping(value = "/qaboard.do")//Q & A
    public String qaboard(BoardVO vo, Model model) throws SQLException, ClassNotFoundException {
        model.addAttribute("ArtList", boardService.selectArtList(vo));
        return "qaboard";
    }

    @RequestMapping(value = "/info.do")//공지사항
    public String infoboard(BoardVO vo, Model model) throws SQLException, ClassNotFoundException {
        model.addAttribute("ArtList", boardService.selectArtList(vo));
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

        }
        else{
            model.addAttribute("AirList2", boardService.getAirInfo(vo));
            vo.setSchIOType("O");
            model.addAttribute("AirList", boardService.getAirInfo(vo));
        }
        return "airport";
    }
 
    @RequestMapping(value="/weatherinfo.do")
    public String getWeatherInfo(@RequestParam("cityname")String cityname, Model model) {
    	model.addAttribute("cityname", cityname);
    	return "weather";
    }
    
    @RequestMapping(value = "/mypageboard.do")
    public String getMyArt(MypageVO vo, Model model, HttpSession session) throws SQLException, ClassNotFoundException{
        UserVO uvo = (UserVO)session.getAttribute("user");
        vo.setWriter_id(uvo.getId());
        model.addAttribute("myArtList",boardService.searchArtListFromUser(vo));
        model.addAttribute("myCommentList",boardService.searchMyComment(vo));
        return "mypage";
    }
    
    
    @RequestMapping(value = "/freewrite.do")
    public String write() throws SQLException, ClassNotFoundException{
        return "writeFree";
    }
    @RequestMapping(value = "/iframe.do")
    public String getIframe() throws SQLException, ClassNotFoundException{
        return "writeEditor";
    }
    

  @RequestMapping(value="/writeboard.do")
    public String insertBoard(ArticleVO vo1, Model model) throws ClassNotFoundException, SQLException {
	    System.out.println(vo1.getBoard_id());
    	boardService.insertArt(vo1);
    	model.addAttribute("sort", "lately");
    	model.addAttribute("id",vo1.getBoard_id());
		return "redirect:freeboard.do";    	
    }
    


}

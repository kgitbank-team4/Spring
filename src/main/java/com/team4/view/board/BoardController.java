package com.team4.view.board;

import com.team4.biz.board.service.BoardService;
import com.team4.biz.board.vo.ArticleVO;
import com.team4.biz.board.vo.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.SQLException;

@Controller
public class BoardController {
    @Autowired
    private BoardService boardService;

    @RequestMapping(value = "/home.do")
    public String home(ArticleVO vo, Model model) throws SQLException, ClassNotFoundException {
        model.addAttribute("AllArtList",boardService.selectAllArtList(vo));
        return "home";
    }
    @RequestMapping(value = "/freeboard.do")//자유
    public String freeboard(ArticleVO vo,Model model) throws SQLException, ClassNotFoundException{
        model.addAttribute("ArtList",boardService.selectArtList(vo));
        return "freeboard";
    }
    @RequestMapping(value = "/hugiboard.do")//후기
    public String hugiboard(ArticleVO vo,Model model) throws SQLException, ClassNotFoundException{
        model.addAttribute("ArtList",boardService.selectArtList(vo));
        return "hugiboard";
    }
    @RequestMapping(value = "/qaboard.do")//Q & A
    public String qaboard(ArticleVO vo,Model model) throws SQLException, ClassNotFoundException{
        model.addAttribute("ArtList",boardService.selectArtList(vo));
        return "qaboard";
    }
    @RequestMapping(value = "/info.do")//공지사항
    public String infoboard(ArticleVO vo,Model model) throws SQLException, ClassNotFoundException{
        model.addAttribute("ArtList",boardService.selectArtList(vo));
        return "info";
    }


}

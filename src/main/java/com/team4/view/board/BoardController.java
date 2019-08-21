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
    public String selectBoardList(ArticleVO vo, Model model) throws SQLException, ClassNotFoundException {
        model.addAttribute("ArtList",boardService.selectArtList(vo));
        return "home";
    }


}

package com.team4.view.board;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.http.*;

import com.team4.biz.board.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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

    @RequestMapping(value = "/freeboard.do")//게시판
    public String freeboard(@RequestParam(defaultValue="1") int curPage, BoardVO vo, Model model, HttpSession session, HttpServletResponse response) throws SQLException, ClassNotFoundException, IOException {
    	if(session.getAttribute("user") == null) {
			response.setContentType("text/html; charset=UTF-8");
	        PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인 후 이용해주세요');</script>");
			out.flush();
			return "forward:home.do";
    	}else {
    		///페이징
    		int count = boardService.countArticle(vo);
    		PageMaker paging = new PageMaker(count, curPage);
    		int start = paging.getPageBegin();
    		int end = paging.getPageEnd();
    		////
    		//System.out.println(vo.getSort());
    		//System.out.println(vo.getId());
    		model.addAttribute("ArtList", boardService.selectArtList(vo, start, end));
    		model.addAttribute("paging", paging);
    		model.addAttribute("sort", vo.getSort());
            if(vo.getId() == 101)
    			return "reviewboard";
            if(vo.getId() == 102)
    			return "photogallery";
    		if(vo.getId() == 103)
    			return "freeboard";
    		if(vo.getId() == 104)
    			return "Q&A";
    		if(vo.getId() == 105)
    			return "notice";
    	}
		return null;
    }

    /*@RequestMapping(value = "/hugiboard.do")//후기
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
    }*/

    @RequestMapping(value = "/search.do")
    public String searchArt(@RequestParam(defaultValue="1") int curPage, BoardVO vo, Model model) throws SQLException, ClassNotFoundException {
      ///페이징
		int count = boardService.countArticle(vo);
		PageMaker paging = new PageMaker(count, curPage);
		int start = paging.getPageBegin();
		int end = paging.getPageEnd();
		////
		//System.out.println(vo.getKeyword());
		model.addAttribute("ArtList", boardService.searchArtList(vo, start, end));
		model.addAttribute("paging", paging);
        if(vo.getId() == 101)
			return "reviewboard";
        if(vo.getId() == 102)
			return "photogallery";
        if(vo.getId() == 103)
			return "freeboard";
		if(vo.getId() == 104)
			return "Q&A";
		if(vo.getId() == 105)
			return "notice";
		return null;
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
    
    @RequestMapping(value = "/admin.do")
    public String getAdmin(MypageVO vo, Model model, HttpSession session) throws SQLException, ClassNotFoundException {
        UserVO uvo = (UserVO) session.getAttribute("user");
        vo.setWriter_id(uvo.getId());
        model.addAttribute("membercount", boardService.countUser()); //전체회원수
        model.addAttribute("AdminArtList", boardService.searchArtListFromUser(vo)); //관리자글
        model.addAttribute("AllUser", boardService.selectAllUser()); //회원리스트
        model.addAttribute("deleteArt", boardService.selectdeleteArt()); //삭제된 글
        return "adminPage";
    }

    @RequestMapping(value = "/showfreeboard.do")
    public String getArticle(ArticleVO vo, Model model, HttpServletRequest request,HttpServletResponse response,HttpSession session) throws SQLException, ClassNotFoundException, IOException {
    	if(session.getAttribute("user") == null) {
			response.setContentType("text/html; charset=UTF-8");
	        PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인 후 이용해주세요');</script>");
			out.flush();
		    return "forward:home.do";
    	}
    	
    	UserVO uvo = (UserVO)session.getAttribute("user");
        VoteVO vvo = new VoteVO();
        vvo.setVoter_id(uvo.getId());
        vvo.setArticle_id(vo.getId());
        boolean result1 = boardService.selectVote(vvo);
        Cookie[] cookies = request.getCookies();
        String[] cookieVal;
        int sw = 0;
        if(cookies!=null&&cookies.length>0){
            //System.out.println("1번");
            for (Cookie co:cookies) {
                if(co.getName().equals("page")){
                    //System.out.println("2번");
                    cookieVal = co.getValue().split(":");
                    for (String val:cookieVal){
                        //System.out.println("3번");
                        if(val.equals(String.valueOf(vo.getId()))){
                            sw = 1;
                            break;
                        }
                    }
                    if(sw == 1) {
                        //System.out.println("4번");
                        break;
                    }
                    else{
                        //System.out.println("5번");
                        sw=1;
                        //System.out.println(co.getValue());
                        //System.out.println(vo.getId());
                        co.setValue(co.getValue()+":"+vo.getId());
                        response.addCookie(co);
                        boardService.plusViewCnt(vo);
                    }
                }
            }
            if(sw == 0) {

                //System.out.println("6번");
                Cookie newCookie = new Cookie("page",String.valueOf(vo.getId()));
                response.addCookie(newCookie);
                boardService.plusViewCnt(vo);
            }
        }
        else {
            Cookie newCookie = new Cookie("page",String.valueOf(vo.getId()));
            response.addCookie(newCookie);
            boardService.plusViewCnt(vo);
        }

        model.addAttribute("Article", boardService.selectArt(vo));
        model.addAttribute("Comment", boardService.selectComment(vo));
        if(result1)
            model.addAttribute("Vote","1");
        
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
    public String write(ArticleVO vo,Model model, HttpSession session) throws SQLException, ClassNotFoundException {
        model.addAttribute("board_id",vo.getBoard_id());
        if(vo.getBoard_id()==101)
        	return "writeReview";
        if(vo.getBoard_id()==102)
        	return "writegallery";
        if(vo.getBoard_id()==103)
        	return "writeFree";
        if(vo.getBoard_id()==104)
        	return "writeQ&A";
        if(vo.getBoard_id()==105)
        	return "writenotice";
		return null;

    }

    @RequestMapping(value = "/iframe.do")
    public String getIframe() throws SQLException, ClassNotFoundException {
        return "writeEditor";
    }

    /*    @RequestMapping(value="/writeboard2.do")
        public String insertBoard2(ContentVO vo1, Model model) throws ClassNotFoundException, SQLException {
            System.out.println(vo1.getText());
            boardService.insertContent(vo1);
            return "redirect:freeboard.do";
        }
        */
    @RequestMapping(value = "/writeboard.do", method = RequestMethod.POST)
    public String insertBoard(ArticleVO vo, Model model, HttpSession session) throws ClassNotFoundException, SQLException {
        //System.out.println(vo.toString());
    	boardService.insertArt(vo);
        return ("redirect:freeboard.do?id="+vo.getBoard_id()+"&sort=lately");
    }
    @RequestMapping(value = "/hideArt.do")
    public String hideArticle(ArticleVO vo,Model model) throws ClassNotFoundException, SQLException{
        boardService.hideArt(vo);
        return ("redirect:freeboard.do?id="+vo.getBoard_id()+"&sort=lately");
    }
    /*@RequestMapping(value = "/deleteArt.do")//미완성임
    public String deleteArticle(ArticleVO vo,Model model) throws ClassNotFoundException, SQLException{
        boardService.deleteArt(vo);
        return ("redirect:freeboard.do?id="+vo.getBoard_id()+"&sort=lately");
    }*/
    @ResponseBody
    @RequestMapping(value = "/insertVote.do")
    public String selectVote(VoteVO vo,Model model) throws ClassNotFoundException, SQLException{
        boolean result1 = boardService.selectVote(vo);
        if(!result1){
            boardService.insertVote(vo);
            boardService.plusUpCnt(vo);
            return "success";
        }
        else
            return "fail";
    }
    @RequestMapping(value = "/updateView.do")
    public String updateView(ArticleVO vo,Model model) throws ClassNotFoundException, SQLException{
    	model.addAttribute("Article", boardService.selectArt(vo));
    	model.addAttribute("board_id",vo.getBoard_id());
    	if(vo.getBoard_id()==101)
    		return "writeReview";
    	if(vo.getBoard_id()==102)
    		return "writegallery";
    	if(vo.getBoard_id()==103)
    		return "writeFree";
    	if(vo.getBoard_id()==104)
    		return "writeQ&A";
    	if(vo.getBoard_id()==105)
    		return "writenotice";
		return null;
    }
    @RequestMapping(value = "/updateboard.do",method = RequestMethod.POST)
    public String updateboard(ArticleVO vo,Model model) throws ClassNotFoundException, SQLException{
        boardService.updateArt(vo);
        return "redirect:showfreeboard.do?id=" + vo.getId();
    }

    //관리자 글 복구기능
    @RequestMapping(value="/adminrestore.do")
    public String AdminRestore(@RequestParam("id") String data) throws SQLException, ClassNotFoundException {
        String[] id= data.split(",");
        for (String a: id) {
            boardService.restoreArt(Integer.parseInt(a));
        }
        return "redirect:admin.do";
    }
    //관리자삭제
    @RequestMapping(value="/admindelete.do")
    public String AdminDelete(@RequestParam("id") String data) throws SQLException, ClassNotFoundException {
        String[] id= data.split(",");
        for (String a: id) {
            boardService.deleteArt(Integer.parseInt(a));
        }
        return "redirect:admin.do";
    }

    /*@RequestMapping(value ="/UpdateUserBoard.do")
    public String updateToNick(ArticleVO vo,HttpSession session) throws SQLException, ClassNotFoundException{
        UserVO user = (UserVO)session.getAttribute("user");
        vo.setWriter_id(user.getId());
        vo.setWriter(user.getNickname());
        boardService.updateArtNick(vo);
        return "redirect:mypage.do";
    }
*/

}

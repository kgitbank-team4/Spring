package com.team4.view.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team4.biz.user.service.UserService;
import com.team4.biz.user.vo.UserVO;

@Controller
public class UserController {

	//boolean result = true;
	
	@Autowired
	private UserService userService;
	
	//로그인 버튼 눌렀을 때
	@RequestMapping(value="/loginbutton.do")
	public String LoginButton() {
		return "login";
	}
	
	//로그인
	@RequestMapping(value="/login.do")
	public String Login(UserVO vo, Model model, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException {
		UserVO user = userService.selectOneUser(vo);
		if(user!=null) {
			model.addAttribute("user", user);
			return "index";
		}
		else {
			//////
			response.setContentType("text/html; charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        out.println("<script>alert('아이디 혹은 비밀번호를 확인해주세요.'); history.go(-1);</script>");
	        out.flush();
	        ///////
			return "login";
		}
	}
	
	//회원정보보기
	@RequestMapping(value="/selectUser.do")
	public String SelectUserInfo(UserVO vo, Model model) throws ClassNotFoundException, SQLException {
		UserVO user1 = userService.selectOneUser(vo);
		model.addAttribute("user1", user1);
		return "userinfo"; //회원정보페이지	
	}
	
	//회원가입버튼
	@RequestMapping(value="/join.do")
	public String Join() {
		return "signup"; //회원가입페이지
	}	
	//회원가입
	@RequestMapping(value="/signup.do")
	public String Signup(UserVO vo) throws ClassNotFoundException, SQLException {
		userService.insertUser(vo);
		return "redirect:login.do";//바로 로그인되도록
	}
	
	//회원정보 수정
	@RequestMapping(value="/updateUser.do")
	public String UpdateUser(UserVO vo) throws ClassNotFoundException, SQLException {
		userService.updateUser(vo);
		return "userinfo";
	}
		
	//회원탈퇴
	@RequestMapping(value="/deleteUser.do")
	public String DeleteUser(UserVO vo, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException {
		userService.deleteUser(vo);
		//////
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<script>alert('탈퇴되었습니다.'); history.go(-1);</script>");
        out.flush();
        ///////
		return "index";
	}
	
	//회원목록보기(관리자)
	@RequestMapping(value="/selectAllUser.do")
	public String SelectAllUser(UserVO vo, Model model) throws ClassNotFoundException, SQLException {
		List<UserVO> userlist = userService.selectAllUser(vo);
		model.addAttribute("userlist", userlist);
		return "showUsers";  //회원전체보기
	}


	/*@RequestMapping(value="/register.do")
	public String test1(UserVO vo, Model model) throws ClassNotFoundException, SQLException {
		userService.insertUser(vo);
		return "redirect:";

	}*/

}

package com.team4.view.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team4.biz.user.service.UserService;
import com.team4.biz.user.vo.UserVO;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
		
	//로그인
	@RequestMapping(value="/login.do")
	public String Login(UserVO vo, HttpSession session, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException {
		UserVO user = userService.selectOneUser(vo);
		if(user!=null) {
			session.setAttribute("user", user);
			response.setContentType("text/html; charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        out.println("<script>alert('로그인되었습니다.');</script>");
	        out.flush();
		}else {
			response.setContentType("text/html; charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        out.println("<script>alert('아이디 혹은 비밀번호를 확인해주세요.');</script>");
	        out.flush();			
		}
		return "forward:home.do";
	}
		
	//회원가입버튼
	@RequestMapping(value="/regmember.do")
	public String Join() {
		return "regmember"; //회원가입페이지
	}	
	//회원가입
	@RequestMapping(value="/signup.do")
	public String Signup(UserVO vo, HttpSession session, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException {
		userService.insertUser(vo);
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<script>alert('회원가입을 축하합니다!');</script>");
        out.flush();
		//가입 후 로그인
		UserVO user = userService.selectOneUser(vo);
		session.setAttribute("user", user);
		return "forward:home.do"; 
	}
	//아이디 중복체크
	@ResponseBody
	@RequestMapping(value="/idcheck.do")
	public String CheckID(@RequestParam("username") String username, HttpSession session) throws ClassNotFoundException, SQLException {
		boolean result1 = userService.idcheck(username);
		if(result1) 
			return "fail";
		else
			return "success";
	}
	//닉네임 중복체크
	@ResponseBody
	@RequestMapping(value="/nicknamecheck.do")
	public String CheckNick(@RequestParam("nickname") String nickname, HttpSession session) throws ClassNotFoundException, SQLException {
		boolean result1 = userService.nicknamecheck(nickname);
		if(result1)
			return "fail";
		else
			return "success";
	}
	
	
	//로그아웃
	@RequestMapping(value="/logout.do")
	public String Logout(HttpSession session, HttpServletResponse response) throws IOException {
		session.removeAttribute("user");
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<script>alert('로그아웃되었습니다!');</script>");
        out.flush();
		return "forward:home.do";
	}
		
	//마이페이지
	@RequestMapping(value="/mypage.do")
	public String Mypage(HttpSession session, HttpServletResponse response) throws IOException {
		if(session.getAttribute("user") == null) {
			response.setContentType("text/html; charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        out.println("<script>alert('로그인 후 이용해주세요');</script>");
	        out.flush();
	        return "forward:home.do";
		}
		else 			
			return "mypage";		
	}	
	//회원정보 수정
	@RequestMapping(value="/userUPDATE.do")
	public String UpdateUser(UserVO vo, HttpSession session) throws ClassNotFoundException, SQLException {
		userService.updateUser(vo);
		UserVO user = userService.selectOneUser(vo);
		session.setAttribute("user", user);
		return "redirect:mypage.do";
	}
		
	//회원탈퇴
	@RequestMapping(value="/userDELETE.do")
	public String DeleteUser(UserVO vo, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException {
		userService.deleteUser(vo);
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<script>alert('탈퇴되었습니다.');</script>");
        out.flush();
		return "forward:home.do";
	}
	
	//회원목록보기(관리자)
	@RequestMapping(value="/selectAllUser.do")
	public String SelectAllUser(UserVO vo, Model model) throws ClassNotFoundException, SQLException {
		List<UserVO> userlist = userService.selectAllUser(vo);
		model.addAttribute("userlist", userlist);
		return "showUsers";  //회원전체보기
	}



}
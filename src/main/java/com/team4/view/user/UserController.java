package com.team4.view.user;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team4.biz.user.service.UserService;
import com.team4.biz.user.vo.UserVO;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/test.do")
	public String test1(UserVO vo, HttpSession session) throws ClassNotFoundException, SQLException {
		List<UserVO> user = userService.selectAllUser(vo);
		session.setAttribute("user", user);
		return "test";
	}
}

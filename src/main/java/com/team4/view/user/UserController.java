package com.team4.view.user;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team4.biz.user.service.UserService;
import com.team4.biz.user.vo.UserVO;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	/*@RequestMapping(value="/register.do")
	public String test1(UserVO vo, Model model) throws ClassNotFoundException, SQLException {
		userService.insertUser(vo);
		return "redirect:";

	}*/
}

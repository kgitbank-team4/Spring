package com.team4.biz.user.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team4.biz.user.dao.UserDAO;
import com.team4.biz.user.vo.UserVO;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDAO userDAO;

	@Override
	public boolean insertUser(UserVO vo) throws ClassNotFoundException, SQLException {
		userDAO.insertUser(vo);
		return true;		
	}

	@Override
	public boolean updateUser(UserVO vo) throws ClassNotFoundException, SQLException {
		userDAO.updateUser(vo);
		return true;
	}

	@Override
	public boolean deleteUser(UserVO vo) throws ClassNotFoundException, SQLException {
		userDAO.deleteUser(vo);
		return true;

	}

	@Override
	public UserVO selectOneUser(UserVO vo) throws ClassNotFoundException, SQLException {
		return userDAO.selectOneUser(vo);
	}

	@Override
	public List<UserVO> selectAllUser(UserVO vo) throws ClassNotFoundException, SQLException {
		return userDAO.selectAllUser(vo);
	}

	@Override
	public boolean idcheck(String username) {
		String result = null;
		try {
			result = userDAO.idSearch(username);
		}catch(Exception e) {			
		}		
		if(result == null)
			return false;
		else
			return true;
		
	}

	@Override
	public boolean nicknamecheck(String nickname) {
		String result = null;
		try {
			result = userDAO.nicknameSearch(nickname);
		}catch(Exception e) {
		}
		if(result == null)
			return false;
		else
			return true;
		
	}
	


}

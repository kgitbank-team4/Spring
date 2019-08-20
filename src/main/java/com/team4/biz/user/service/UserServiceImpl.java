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
	public void insertUser(UserVO vo) throws ClassNotFoundException, SQLException {
		userDAO.insertUser(vo);
		
	}

	@Override
	public void updateUser(UserVO vo) throws ClassNotFoundException, SQLException {
		userDAO.updateUser(vo);
		
	}

	@Override
	public void deleteUser(UserVO vo) throws ClassNotFoundException, SQLException {
		userDAO.deleteUser(vo);
		
	}

	@Override
	public UserVO selectOneUser(UserVO vo) throws ClassNotFoundException, SQLException {
		return userDAO.selectOneUser(vo);
	}

	@Override
	public List<UserVO> selectAllUser(UserVO vo) throws ClassNotFoundException, SQLException {
		return userDAO.selectAllUser(vo);
	}
	


}

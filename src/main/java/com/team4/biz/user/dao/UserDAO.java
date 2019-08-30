package com.team4.biz.user.dao;

import java.util.List;

import com.team4.biz.user.vo.UserVO;

public interface UserDAO {
	public void insertUser(UserVO vo); 
	public void updateUser(UserVO vo);
	public void deleteUser(UserVO vo);
	public UserVO selectOneUser(UserVO vo);
	public List<UserVO> selectAllUser(UserVO vo);

	public String idSearch(String username);
	public String nicknameSearch(String nickname);
}

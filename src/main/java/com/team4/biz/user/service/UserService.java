package com.team4.biz.user.service;

import java.sql.SQLException;
import java.util.List;

import com.team4.biz.user.vo.UserVO;

public interface UserService {
	public boolean insertUser(UserVO vo) throws ClassNotFoundException, SQLException; //회원가입
	public boolean updateUser(UserVO vo) throws ClassNotFoundException, SQLException; //회원정보수정
	public boolean deleteUser(UserVO vo) throws ClassNotFoundException, SQLException; //탈퇴
	public UserVO selectOneUser(UserVO vo) throws ClassNotFoundException, SQLException; //로그인, 회원정보보기
	public List<UserVO> selectAllUser(UserVO vo) throws ClassNotFoundException, SQLException; //회원전체보기 -> 관리자 
}

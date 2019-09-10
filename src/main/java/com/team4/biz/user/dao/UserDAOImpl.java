
package com.team4.biz.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team4.biz.user.vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	SqlSession sqlSession;
	private static String namespace = "com.team4.biz.user.dao.UserDAO";
	
	@Override
	public void insertUser(UserVO vo) {
		sqlSession.insert(namespace+".insertUser", vo);
	}

	@Override
	public void updateUser(UserVO vo) {
		sqlSession.update(namespace+".updateUser", vo);
		
	}

	@Override
	public void deleteUser(UserVO vo) {
		sqlSession.update(namespace+".deleteUser", vo);
		
	}

	@Override
	public void hideUserArt(UserVO vo) {
		sqlSession.update(namespace+".hideUserArt",vo);
	}

	@Override
	public void hideUserNick(UserVO vo) {
		sqlSession.update(namespace+".hideUserNick",vo);
	}

	@Override
	public UserVO selectOneUser(UserVO vo) {
		return sqlSession.selectOne(namespace+".selectOneUser", vo);
	}

	@Override
	public List<UserVO> selectAllUser(UserVO vo) {
		return sqlSession.selectList(namespace+".selectAllUser");
	}

	@Override
	public String idSearch(String username) {
		String result = null;
		try {
			result =  sqlSession.selectOne(namespace+".selectUsername", username);
		}catch(Exception e){	
		}
		return result;
	}

	@Override
	public String nicknameSearch(String nickname) {
		String result = null;
		try {
			result = sqlSession.selectOne(namespace+".selectNickname", nickname);
		}catch(Exception e) {
		}
		return result;
	}

}


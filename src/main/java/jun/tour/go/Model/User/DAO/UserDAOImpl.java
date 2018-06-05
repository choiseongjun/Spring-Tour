package jun.tour.go.Model.User.DAO;

import org.apache.ibatis.session.SqlSession;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import jun.tour.go.Model.User.DTO.UserDTO;
@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public String loginCheck(UserDTO dto) {
		return sqlSession.selectOne("user.login_check",dto);
	}

	@Override
	public void insertUser(UserDTO dto) {
		sqlSession.insert("user.joinuser",dto);
	
	}

	@Override
	public UserDTO viewMember(String u_id) {
		return sqlSession.selectOne("user.ViewUser",u_id);
		
	}

	@Override
	public void updateUser(UserDTO dto) {
		sqlSession.update("user.updateUser",dto);
		
	}

	@Override
	public boolean checkPw(String u_id, String u_password) {
		boolean result=false;
		//mapper에 2개 이상의 자료를 전달할 때 :map,dto 사용
		Map<String,String> map=new HashMap<>();
		map.put("u_id", u_id);
		map.put("u_password", u_password);
		int count=sqlSession.selectOne("user.checkPw",map);
		if(count==1) result=true;
		return result;
	}

	@Override
	public void deleteUser(String u_id) {
		sqlSession.delete("user.deleteUser",u_id);
	}

	@Override
	public String adminloginCheck(UserDTO dto) {
		return sqlSession.selectOne("admin.login_check",dto);
	}

}

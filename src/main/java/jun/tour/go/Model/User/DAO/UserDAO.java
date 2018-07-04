package jun.tour.go.Model.User.DAO;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import jun.tour.go.Model.User.DTO.UserDTO;

public interface UserDAO {

	//회원가입 처리
	public int insertUser(Map<String,String> map);
	//로그인 처리
	public Map<String,Object> selectUser(String u_id);
	public UserDTO viewMember(String u_id);
	public void updateUser(UserDTO dto);
	public boolean checkPw(String u_id,String u_password);
	public void deleteUser(String u_id);
	public String adminloginCheck(UserDTO dto);
	 public boolean getUser(String u_id);
	 public String findId(String u_name,String u_phone);
}

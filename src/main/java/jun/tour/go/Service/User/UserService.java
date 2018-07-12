package jun.tour.go.Service.User;

import java.util.List;


import jun.tour.go.Model.User.DTO.MemberDTO;
import jun.tour.go.Model.User.DTO.UserDTO;

public interface UserService{

	public UserDTO viewMember(String u_id);
	public void updateUser(UserDTO dto);
/*	public boolean checkPw(String u_id,String u_password);*/
	public void deleteUser(String u_id);
	public String adminloginCheck(UserDTO dto);
	 public boolean getUser(String u_id);
	 public String findId(String u_name,String u_phone);
	 public List<MemberDTO> memberList();
}

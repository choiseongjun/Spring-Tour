package jun.tour.go.Service.User;

import jun.tour.go.Model.User.DTO.UserDTO;

public interface UserService {

	public String loginCheck(UserDTO dto);
	public void insertUser(UserDTO dto);
	public UserDTO viewMember(String u_id);
	public void updateUser(UserDTO dto);
	public boolean checkPw(String u_id,String u_password);
	public void deleteUser(String u_id);
	public String adminloginCheck(UserDTO dto);
}

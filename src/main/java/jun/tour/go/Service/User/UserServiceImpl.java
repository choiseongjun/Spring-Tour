package jun.tour.go.Service.User;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import jun.tour.go.Model.User.DAO.UserDAO;
import jun.tour.go.Model.User.DTO.MemberDTO;
import jun.tour.go.Model.User.DTO.UserDTO;
@Service
public class UserServiceImpl implements UserService {

	@Inject
	UserDAO userDao;
	
	@Override
	public UserDTO viewMember(String u_id) {
		return userDao.viewMember(u_id);
	}

	@Override
	public void updateUser(UserDTO dto) {
		userDao.updateUser(dto);
	}

	/*@Override
	public boolean checkPw(String u_id, String u_password) {
		return userDao.checkPw(u_id, u_password);
	}*/

	@Override
	public void deleteUser(String u_id) {
		userDao.deleteUser(u_id);
	}

	@Override
	public String adminloginCheck(UserDTO dto) {
		// TODO Auto-generated method stub
		return userDao.adminloginCheck(dto);
	}

	@Override
	public boolean getUser(String u_id) {
		return userDao.getUser(u_id);
	}

	@Override
	public String findId(String u_name,String u_phone) {
		String list=userDao.findId(u_name,u_phone);
		
		return list;
	}

	@Override
	public List<MemberDTO> memberList() {
		// TODO Auto-generated method stub
		return userDao.memberList();
	}



	

	

	
	


}

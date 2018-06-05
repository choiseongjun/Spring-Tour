package jun.tour.go.Service.User;

import javax.inject.Inject;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import jun.tour.go.Model.User.DAO.UserDAO;
import jun.tour.go.Model.User.DTO.UserDTO;
@Service
public class UserServiceImpl implements UserService,UserDetailsService {

	@Inject
	UserDAO userDao;
	
	@Override
	public String loginCheck(UserDTO dto) {
		return userDao.loginCheck(dto);
	}

	@Override
	public void insertUser(UserDTO dto) {
		userDao.insertUser(dto);
	}

	@Override
	public UserDTO viewMember(String u_id) {
		return userDao.viewMember(u_id);
	}

	@Override
	public void updateUser(UserDTO dto) {
		userDao.updateUser(dto);
	}

	@Override
	public boolean checkPw(String u_id, String u_password) {
		return userDao.checkPw(u_id, u_password);
	}

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
	public UserDTO loadUserByUsername(String u_id) throws UsernameNotFoundException {

		UserDTO user =  userDao.viewMember(u_id);
		if(user==null) throw new UsernameNotFoundException("not found user");
		return user;
	}

}

package jun.tour.go.Service.security;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import jun.tour.go.Model.User.DTO.UserDTO;




public class userAuthenticationService implements UserDetailsService {

	private SqlSessionTemplate sqlSession;
	private UserDTO userDto;

	public UserDTO getUserDto() {
		return userDto;
	}

	public void setUserDto(UserDTO userDto) {
		this.userDto = userDto;
	}

	public userAuthenticationService() {
	}

	public userAuthenticationService(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public UserDetails loadUserByUsername(String u_id)
			throws UsernameNotFoundException {
		//아이디 호출
		Map<String,Object> user=sqlSession.selectOne("user.selectUser",u_id);
		//아이디가 없으면 에러발생
		if(user==null)
			throw new UsernameNotFoundException(u_id);
		//사용권한 목록
		List<GrantedAuthority> authority=new ArrayList<>();
		authority.add(new SimpleGrantedAuthority(
				user.get("AUTHORITY").toString()));
		return new UserDTO(user.get("USERNAME").toString()
				, user.get("PASSWORD").toString()
				,(Integer)Integer.valueOf(user.get("ENABLED").toString())==1,
				true,true,true,authority,
				user.get("U_NAME").toString()
				,user.get("U_PHONE").toString()
				,user.get("U_ADDRESS").toString());
	}
}



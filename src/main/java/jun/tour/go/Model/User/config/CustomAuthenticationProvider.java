package jun.tour.go.Model.User.config;

import java.util.Collection;

import org.springframework.aop.ThrowsAdvice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;

import jun.tour.go.Model.User.DTO.UserDTO;
import jun.tour.go.Service.User.UserServiceImpl;

public class CustomAuthenticationProvider implements AuthenticationProvider{

	@Autowired
	UserServiceImpl userServiceImpl;
	
	
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		
		String username=authentication.getName();
		String password=(String) authentication.getCredentials();
		
		UserDTO userDto;
		Collection<? extends GrantedAuthority> authorities;
		
		try {
			userDto=userServiceImpl.loadUserByUsername(username);
			
			if(!userDto.getPassword().equals(password)) throw new BadCredentialsException("is not correct");
			
			authorities=userDto.getAuthorities();
			return new UsernamePasswordAuthenticationToken(userDto, password,authorities);
				
		}catch(Exception e){
			e.printStackTrace();
			
		}
		return authentication;
		
	}

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return true;
	}

	
}

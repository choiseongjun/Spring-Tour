package jun.tour.go.Service.security;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import jun.tour.go.Model.User.DTO.UserDTO;


public class userLoginSuccessHandler 
implements AuthenticationSuccessHandler{

	@Override
	public void onAuthenticationSuccess(
			HttpServletRequest req,
			HttpServletResponse res, 
			Authentication auth)
			throws IOException, ServletException {
		UserDTO dto=(UserDTO)auth.getPrincipal();
		String msg=auth.getName()+"님 환영합니다.";
		req.setAttribute("msg", msg);
		RequestDispatcher rd=req.getRequestDispatcher("/");
		rd.forward(req, res);
	}

}

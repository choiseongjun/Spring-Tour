package jun.tour.go.Service.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

public class userLoginFailureHandler 
implements AuthenticationFailureHandler{

	@Override
	public void onAuthenticationFailure(HttpServletRequest request, 
														HttpServletResponse response, 
														AuthenticationException exception)
			throws IOException, ServletException {
			//request 영역에 변수 저장
		//mav.addObject("message", "error");
		request.setAttribute("message","error");
		//forward
		request.getRequestDispatcher(
				"/WEB-INF/views/user/login.jsp").forward(request,response);
	}

}

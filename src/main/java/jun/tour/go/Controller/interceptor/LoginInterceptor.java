package jun.tour.go.Controller.interceptor;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor
	extends HandlerInterceptorAdapter{
@Override//메인액션 실행되기전
public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
		throws Exception {
	HttpSession session = request.getSession();
	Enumeration attributeNames = session.getAttributeNames();
	while (attributeNames.hasMoreElements()) {
		String name = (String) attributeNames.nextElement();
		SecurityContext value = (SecurityContext) session.getAttribute(name);
		Authentication authentication = value.getAuthentication();
		String u_id = authentication.getName();
	
	if(u_id==null) {
		response.sendRedirect(request.getContextPath()
				+"/user/login.do?message=nologin");
		return false;//메인 액션으로 안감
	
	}else {
		return true;//메인 액션으로 감
	}}
	return false;
}
@Override//메인액션이 실행된후
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}
}

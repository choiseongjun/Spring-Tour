package jun.tour.go.Service.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

public class userDeniedHandler implements AccessDeniedHandler {

	@Override
	public void handle(HttpServletRequest req, HttpServletResponse res, AccessDeniedException ade)
			throws IOException, ServletException {
		req.setAttribute("errMsg","관리자만 사용할 수 있는 기능입니다.");
		req.getRequestDispatcher(
				"/WEB-INF/views/error/403error.jsp").forward(req, res);
		/*String url="/WEB-INF/views/user/denied.jsp"
		 * RequestDispatcher rd=req.getRequestDispatcher(url);
		 * rd.forward(req,res)*/
	}

}

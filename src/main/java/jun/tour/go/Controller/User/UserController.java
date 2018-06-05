package jun.tour.go.Controller.User;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jun.tour.go.Model.User.DTO.UserDTO;
import jun.tour.go.Service.User.UserService;

@Controller
@RequestMapping("user/*")
public class UserController {

	@Inject
	UserService userService;
	

	@RequestMapping("login.do")
	public String login() {
		return "user/login";
	}

	@RequestMapping("login_check.do")
	public ModelAndView login_check(UserDTO dto, HttpSession session, ModelAndView mav) {
		String name = userService.loginCheck(dto);
		String name1=userService.adminloginCheck(dto);
		if (name != null) {
			session.setAttribute("u_id", dto.getU_id());
			session.setAttribute("u_name", name);

			mav.setViewName("/home");
		}else if(name1!=null){
			session.setAttribute("adminu_id", dto.getU_id());
			session.setAttribute("u_name", name);
			mav.setViewName("/home");
		}else {
			mav.setViewName("user/login");
			mav.addObject("message", "error");
		}
		return mav;

	}

	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();// 세션 초기화
		// 로그인으로 다시 보내기(리다이렉트)
		return "redirect:/user/login.do";
	}

	@RequestMapping("joinpage.do")
	public String joinpage() {
		return "user/Register";
	}

	// Modelattribue 폼에서 전달된값 dto에 저장하는 객체
	@RequestMapping("joinuser.do")
	public String joinuser(@ModelAttribute UserDTO dto) {
		/* System.out.println(dto); */
		userService.insertUser(dto);
		return "user/Register";
	}

	@RequestMapping("view.do")
	public String viewuser(String u_id, Model model) {
		// 모델에 저장
		model.addAttribute("dto", userService.viewMember(u_id));
		// view.jsp에 포워딩
		return "user/UpdateUser";
	}

	@RequestMapping("update.do")
	public String update(UserDTO dto, Model model) {
		boolean result = userService.checkPw(dto.getU_id(), dto.getU_password());
		if (result) {// 비밀번호가 맞으면
			userService.updateUser(dto);
			return "/home";
		} else {// 비밀번호가 틀리면
			model.addAttribute("dto", dto);
			model.addAttribute("message", "비밀번호를 확인하시오");
			return "user/UpdateUser";
		}
	}

	@RequestMapping("delete.do")
	public String delete(String u_id, String u_password, Model model) {
		boolean result = userService.checkPw(u_id, u_password);
		if (result){//비번이 맞으면 삭제->목록으로 이동
			userService.deleteUser(u_id);
			return "/home";
		} else {//비번이 틀릴경우
			model.addAttribute("message", "비밀번호를 확인하시오");
			model.addAttribute("dto", userService.viewMember(u_id));
			return "/home";
		}
	}
}

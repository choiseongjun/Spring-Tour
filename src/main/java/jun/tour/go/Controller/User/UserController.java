package jun.tour.go.Controller.User;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import jun.tour.go.Model.User.DAO.UserDAO;
import jun.tour.go.Model.User.DTO.MemberDTO;
import jun.tour.go.Model.User.DTO.UserDTO;
import jun.tour.go.Service.User.UserService;
import jun.tour.go.Service.security.ShaEncoder;

import java.io.IOException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class UserController {

	@Inject
	UserService userService;
	@Inject
	ShaEncoder shaEncoder;
	@Inject
	UserDAO userDao;
	@RequestMapping("/")
	public String main(Model model) {
		System.out.println("경로"+"/");
		return "home";
	}
	
	
	
	@RequestMapping("/user/home")
	public String home(Model model) {
		System.out.println("경로"+"/user/home");
		return "home";
	}
	@RequestMapping("user/list.do")
	public String MList(Model model) {
		List<MemberDTO> list = userService.memberList();
        model.addAttribute("list", list);
        System.out.println("회원목록"+list);
		return "Adminmode/MemberList";
	}
	
	
	//시큐리티적용 회원가입(shaencoder 적용)
	@RequestMapping("user/joinuser.do")
	public String insertUser(
			String u_id,String u_password,
			String u_name,String u_phone,String u_address,String authority) {

			String dbpw=shaEncoder.saltEncoding(u_password, u_id);
			Map<String,String> map=new HashMap<>();
			map.put("u_id",u_id);
			map.put("u_password",dbpw);
			map.put("u_name",u_name);
			map.put("u_phone",u_phone);
			map.put("u_address",u_address);
			map.put("authority", authority);
			int result=userDao.insertUser(map);
			return "user/login";
		}
	
	
	@RequestMapping("user/login.do")
	public String login(HttpServletRequest request,HttpServletResponse response ) throws IOException, NoSuchAlgorithmException, InvalidKeySpecException{
		HttpSession session = request.getSession();

		KeyPairGenerator generator = KeyPairGenerator.getInstance("RSA");
		generator.initialize(1024);
		KeyPair keyPair = generator.genKeyPair();
		KeyFactory keyFactory = KeyFactory.getInstance("RSA");
		PublicKey publicKey = keyPair.getPublic();
		PrivateKey privateKey = keyPair.getPrivate();
 
		session.setAttribute("_RSA_WEB_Key_", privateKey);   //세션에 RSA 개인키를 세션에 저장한다.
		RSAPublicKeySpec publicSpec = (RSAPublicKeySpec) keyFactory.getKeySpec(publicKey, RSAPublicKeySpec.class);
		String publicKeyModulus = publicSpec.getModulus().toString(16);
		String publicKeyExponent = publicSpec.getPublicExponent().toString(16);
 
		request.setAttribute("RSAModulus", publicKeyModulus);  //로그인 폼에 Input Hidden에 값을 셋팅하기위해서
		request.setAttribute("RSAExponent", publicKeyExponent);   //로그인 폼에 Input Hidden에 값을 셋팅하기위해서

		return "user/login";
	}
//시큐리티에서 처리해줌
	/*@RequestMapping("login_check.do")
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

	}*/

	@RequestMapping("user/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		SecurityContextHolder.getContext().setAuthentication(null);
		
		// 로그인으로 다시 보내기(리다이렉트)
		return "redirect:/user/login.do";
	}

	@RequestMapping("user/joinpage.do")
	public String joinpage(Model model) {
		return "user/Register";
	}

	// Modelattribue 폼에서 전달된값 dto에 저장하는 객체
	/*@RequestMapping("joinuser.do")
	public String joinuser(@ModelAttribute UserDTO dto) {
		 System.out.println(dto); 
		userService.insertUser(dto);
		return "user/Register";
	}*/

	@RequestMapping("user/view.do")
	public String viewuser(Model model,Authentication authentication,HttpServletRequest request) {

		authentication= SecurityContextHolder.getContext().getAuthentication();
		String u_id = authentication.getName().toString();
		
	
		model.addAttribute("auth",authentication.getPrincipal());
	
		return "user/UpdateUser";
	}

	@RequestMapping("update.do")
	public String update(UserDTO dto, Model model) {
		boolean result = userDao.checkPw(dto.getU_id(), dto.getPassword());
		if (result) {// 비밀번호가 맞으면
			userDao.updateUser(dto);
			return "/home";
		} else {// 비밀번호가 틀리면
			model.addAttribute("dto", dto);
			model.addAttribute("message", "비밀번호를 확인하시오");
			return "user/UpdateUser";
		}
	}
//회원탈퇴
	@RequestMapping("delete.do")
	public String delete(String u_id, String u_password, Model model) {
		boolean result = userDao.checkPw(u_id, u_password);
		if (result){//비번이 맞으면 삭제->목록으로 이동
			userService.deleteUser(u_id);
			return "/home";
		} else {//비번이 틀릴경우
			model.addAttribute("message", "비밀번호를 확인하시오");
			model.addAttribute("dto", userService.viewMember(u_id));
			return "/home";
		}
	}
	@ResponseBody
    @RequestMapping(value="user/checkId.do",method = RequestMethod.POST)
	 public String checkSignup(String u_id, Model model) {
		
      System.out.println(u_id);
        boolean result=userService.getUser(u_id);
        System.out.println(result);
		return String.valueOf(result).trim();
        
	}
	
	@RequestMapping("user/findid.do")
	public String findid() {
		return "user/find";
	}
	@RequestMapping(value="user/findidimpl.do",method = RequestMethod.POST)
		public @ResponseBody String findidImpl(String u_name,String u_phone)throws Exception {
		System.out.println("sdsd");
		System.out.println(u_name+u_phone);
	String u_idlist = (String) userService.findId(u_name,u_phone);
	
		return u_idlist;
	

		}
	
	

	}


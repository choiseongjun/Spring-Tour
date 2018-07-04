package jun.tour.go.Controller.Product;

import java.io.IOException;
import java.security.Principal;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.servlet.ModelAndView;

import jun.tour.go.Model.Cart.DTO.CartDTO;
import jun.tour.go.Model.User.DTO.UserDTO;
import jun.tour.go.Service.Cart.CartService;

@Controller
@RequestMapping("Cart/*")
public class CartController {

	@Inject
	CartService cartService;

	
	
	@RequestMapping("update.do")
	public String update(@RequestParam int[] r_personnel,@RequestParam int[] r_id,HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String u_id = auth.getName().toString();
		if(u_id!=null) {
			for(int i=0;i<r_id.length;i++) {
				if(r_personnel[i]==0) {
					cartService.delete(r_id[i]);;
				}else {
				CartDTO dto=new CartDTO();
				dto.setU_id(u_id);
				dto.setR_id(r_id[i]);
				dto.setR_personnel(r_personnel[i]);
				cartService.modifyCart(dto);
			}}
		}		return "redirect:/Cart/list.do";
		
	}
	
	@RequestMapping("deleteAll.do")
	public String deleteAll(HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String u_id = auth.getName().toString();
		if (u_id!= null) {
			cartService.deleteAll(u_id);
			}
		return "redirect:/Cart/list.do";
	}
	
	@RequestMapping("delete.do")
	public String delete(int r_id, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String u_id = auth.getName().toString();
		if (u_id!= null) {
			cartService.delete(r_id);
			}
		return "redirect:/Cart/list.do";
	}

	@RequestMapping(value = "insert.do", method = RequestMethod.POST)
	public String insert(HttpServletRequest request, @ModelAttribute CartDTO dto
			) {
	
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String u_id = auth.getName().toString();

			dto.setU_id(u_id);
			cartService.insert(dto);
	
		
		return "redirect:/Cart/list.do";
	}

	@RequestMapping("list.do")
	public ModelAndView list(HttpServletRequest request, ModelAndView mav) {
		Map<String, Object> map = new HashMap<>();
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String u_id = auth.getName().toString();
		
			System.out.println("아이디"+u_id);
		if (u_id != null) {
			List<CartDTO> list = cartService.listCart(u_id);
			int totalMoney = cartService.sumMoney(u_id);

			map.put("totalMoney", totalMoney);
			map.put("list", list);
			map.put("count", list.size());
			mav.setViewName("Cart/cart_list");
			mav.addObject("map", map);
			return mav;
		} else {// 로그인하지 않은경우
			return new ModelAndView("user/login", "", null);
		}
	}

}

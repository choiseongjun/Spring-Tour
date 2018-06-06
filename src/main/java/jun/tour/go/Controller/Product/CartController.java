package jun.tour.go.Controller.Product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jun.tour.go.Model.Cart.DTO.CartDTO;
import jun.tour.go.Service.Cart.CartService;

@Controller
@RequestMapping("Cart/*")
public class CartController {

	@Inject
	CartService cartService;
	
	@RequestMapping("delete.do")
	public String delete(@RequestParam int r_id,HttpSession session) {
		if(session.getAttribute("u_id")!=null)
			cartService.delete(r_id);
		return "redirect:/Cart/list.do";
	}
	
	@RequestMapping("insert.do")
	public String insert(HttpSession session, @ModelAttribute CartDTO dto) {
		String userid = (String) session.getAttribute("u_id");
		
		dto.setU_id(userid);
		cartService.insert(dto);
		return "redirect:/Cart/list.do";
	}
	
	@RequestMapping("list.do")
	public ModelAndView list(HttpSession session,ModelAndView mav) {
		Map<String,Object> map=new HashMap<>();
		String u_id=(String)session.getAttribute("u_id");
		if(u_id !=null) {
			List<CartDTO> list=cartService.listCart(u_id);
			int totalMoney=cartService.sumMoney(u_id);
			
			map.put("totalMoney", totalMoney);
			map.put("list",list);
			map.put("count",list.size());
			mav.setViewName("Cart/cart_list");
			mav.addObject("map",map);
			return mav;
		}else {//로그인하지 않은경우
			return new ModelAndView("user/login","",null);
		}
	}
}

package jun.tour.go.Controller.Product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jun.tour.go.Model.Cart.DTO.CartDTO;
import jun.tour.go.Service.Cart.CartService;

@Controller
@RequestMapping("Cart/*")
public class CartController {

	@Inject
	CartService cartService;
	
	@RequestMapping("list.do")
	public ModelAndView list(HttpSession session,ModelAndView mav) {
		Map<String,Object> map=new HashMap<>();
		String u_id=(String)session.getAttribute("u_id");
		if(u_id !=null) {
			List<CartDTO> list=cartService.listCart(u_id);
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

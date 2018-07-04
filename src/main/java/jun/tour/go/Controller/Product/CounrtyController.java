package jun.tour.go.Controller.Product;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jun.tour.go.Service.Product.ProductService;

@Controller
@RequestMapping("Country/*")
public class CounrtyController {

	@Inject
	ProductService productService;
	
	@RequestMapping("List.do")
	public ModelAndView detail(@RequestParam int p_ctycode,ModelAndView mav) {
		mav.addObject("list", productService.categoryProduct(p_ctycode));
		mav.setViewName("/Country/CountryCategory");
		return mav;
	}

}

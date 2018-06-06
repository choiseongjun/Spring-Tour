package jun.tour.go.Controller.Product;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jun.tour.go.Service.Product.ProductService;

@Controller
@RequestMapping("Country/*")
public class CounrtyController {

	@Inject
	ProductService productService;
	
	@RequestMapping("List/{p_ctycode}")
	public ModelAndView detail(
			@PathVariable int p_ctycode,ModelAndView mav) {
		mav.setViewName("/Country/CountryCategory");
		mav.addObject("dto",productService.detailProduct(p_ctycode));
		return mav;
	}
}

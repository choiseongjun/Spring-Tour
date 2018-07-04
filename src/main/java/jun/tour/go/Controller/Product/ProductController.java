package jun.tour.go.Controller.Product;

import java.io.File;

import javax.inject.Inject;

import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jun.tour.go.Model.Product.DTO.ProductDTO;
import jun.tour.go.Service.Product.ProductService;

@Controller
@RequestMapping("product/*")
public class ProductController {

		@Inject
		ProductService productService;
	
		@RequestMapping("Plan")
		public String planview() {
			return "Schedule/Plan";
		}
		
		@RequestMapping("detail/{p_code}")
		public ModelAndView detail(
				@PathVariable int p_code,ModelAndView mav) {
			mav.setViewName("/Product/TourListDetail");
			mav.addObject("dto",productService.detailProduct(p_code));
			return mav;
		}
				
		@Secured("ROLE_ADMIN")
		@RequestMapping("insert.do")
		public String insert(ProductDTO dto) {
			String filename="-";
			if(!dto.getFile1().isEmpty()) {
				filename=dto.getFile1().getOriginalFilename();
				try {
					String path="D:\\SpringEx\\TourPackage\\src\\main\\webapp\\WEB-INF\\style\\images\\";//업로드할 디렉토리
				//디렉토리가 존재하지않으면 생성
					new File(path).mkdir();
					//임시 디렉토리에 저장된 첨부파일을 이동
					dto.getFile1().transferTo(new File(path+filename));
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			dto.setP_img(filename);
			productService.insertProduct(dto);
			return "/home";
		}
		
		@RequestMapping("write.do")
		public String write() {
			return "Product/TourWrite";
		}
		
		
	@RequestMapping("TourList.do")
	public ModelAndView ProductList(ModelAndView mav){
		mav.setViewName("/Product/TourList");
		mav.addObject("list",productService.listProduct());
		return mav;
	}
}

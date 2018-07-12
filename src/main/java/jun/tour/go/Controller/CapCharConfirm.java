package jun.tour.go.Controller;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CapCharConfirm  {


	public static String CAPTCHA;
	private static final Logger logger =LoggerFactory.getLogger(CaptchaServlet.class);

    @ResponseBody
    @RequestMapping("/capCharConfirm")
	protected String capCharConfirm(@RequestParam(required=false) String capcha ) {
    	logger.info(" qq파라미터 값capcha :d " + capcha + " Google : "+ CAPTCHA);
		String result ="fail";
    	if(capcha!=null){
    		logger.info(" 파라미터 값capcha : " + capcha);
    		if(capcha.equals(CAPTCHA)){
    			result ="SUCCESS";
    		}
    	}
    
		return result;
	}

    
}
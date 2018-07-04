package jun.tour.go.Controller.Email;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jun.tour.go.Model.Email.DTO.EmailDTO;
import jun.tour.go.Service.Email.EmailService;

@Controller
@RequestMapping("email/*")
public class EmailController {

	@Inject
	EmailService emailService;
	
	@RequestMapping("write.do")
	public String wirte() {
		return "/Mail/write";
	}
	@RequestMapping("send.do")
	public String send(EmailDTO dto,Model model) {
		try {
				emailService.sendMail(dto);
				model.addAttribute("message","이메일이 발송되었습니다");
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("message","이메일 발송 실패..");
		}
		return "Mail/write";
	}
}

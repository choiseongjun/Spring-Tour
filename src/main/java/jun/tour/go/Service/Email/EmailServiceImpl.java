package jun.tour.go.Service.Email;

import javax.inject.Inject;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import jun.tour.go.Model.Email.DTO.EmailDTO;

@Service
public class EmailServiceImpl implements EmailService {

	@Inject
	JavaMailSender mailSender;
	@Override
	public void sendMail(EmailDTO dto) {
		try {
			//이메일 객체
			MimeMessage msg=mailSender.createMimeMessage();
			//받는 사람
			msg.addRecipient(RecipientType.TO,
					new InternetAddress(dto.getReceiveMail()));
			//보내는 사람
			msg.addFrom(new InternetAddress[]{
				new InternetAddress(dto.getSenderMail(),dto.getSenderMail())
			});
			//이메일 제목
			msg.setSubject(dto.getSubject(),"utf-8");
			//이메일 본문
			msg.setText(dto.getMessage(),"utf-8");
			//이메일 보내는 부문
			mailSender.send(msg);
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

}

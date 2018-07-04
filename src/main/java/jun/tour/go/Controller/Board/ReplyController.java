package jun.tour.go.Controller.Board;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import jun.tour.go.Model.Board.DTO.ReplyDTO;
import jun.tour.go.Service.Board.ReplyService;



@RestController
@RequestMapping("reply/*")
public class ReplyController {

	@Inject
	ReplyService replyService;
	
	@RequestMapping("list.do")
	public ModelAndView list(@RequestParam int bno,ModelAndView mav) {
		List<ReplyDTO> list=replyService.list(bno);//댓글 목록
		mav.setViewName("Board/reply_list");
		mav.addObject("list",list);
		return mav;//뷰로 이동
	}
	
	@RequestMapping("insert.do")
	public void insert(ReplyDTO dto,HttpServletRequest request) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String u_id = auth.getName().toString();
		
		dto.setReplyer(u_id);//댓글이 테이블에 저장됨
		replyService.create(dto);
	}
}

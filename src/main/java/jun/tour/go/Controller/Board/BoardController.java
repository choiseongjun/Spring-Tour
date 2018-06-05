package jun.tour.go.Controller.Board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Board/*")
public class BoardController {

	@RequestMapping("boardList.do")
	public String joinpage() {
		return "Board/boardList";
	}
}

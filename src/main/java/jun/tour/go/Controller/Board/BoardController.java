package jun.tour.go.Controller.Board;

import java.security.Principal;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import jun.tour.go.Model.Board.DTO.BoardDTO;
import jun.tour.go.Model.Board.DTO.Pager;
import jun.tour.go.Service.Board.BoardService;


@Controller
@RequestMapping("Board/*")
public class BoardController {
	
	@Inject
	BoardService boardService;
	
	@RequestMapping("delete.do")
	public String delete(int bno) throws Exception{
		boardService.delete(bno);
		return "redirect:/Board/list.do";
	}
	
	@RequestMapping("getAttach/{bno}")
	@ResponseBody
	public  List<String> getAttach(@PathVariable int bno){
		return boardService.getAttach(bno);
	}
	
	@RequestMapping("update.do")
	public String update(BoardDTO dto)throws Exception{
		if(dto!=null) {
			boardService.update(dto);//수정
		}
		/*return "redirect:/Board/list.do";*/
		return "redirect:/Board/view.do?bno="+dto.getBno();//같은화면으로 재호출
	}
	
	
	@RequestMapping("view.do")
	public ModelAndView view(int bno,HttpSession session,Principal principal)
		throws Exception{
		boardService.increaseViewcnt(bno,session);//조회수 증가처리
		ModelAndView mav=new ModelAndView();
		mav.setViewName("Board/view");
		mav.addObject(principal);
		mav.addObject("dto",boardService.read(bno));//자료 저장
		return mav;
	}
	
	@RequestMapping("insert.do")
	public String insert(HttpServletRequest request,BoardDTO dto) throws Exception{
	
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String u_id = auth.getName().toString();

			System.out.println("아이디는"+u_id);
			dto.setWriter(u_id);
		boardService.create(dto);

	
		return "redirect:/Board/list.do";
		
	}
	
	@RequestMapping("list.do")
	public ModelAndView list(
			@RequestParam(defaultValue="name") String search_option,
			@RequestParam(defaultValue="") String keyword,
			@RequestParam(defaultValue="1") int curPage)
					throws Exception{
		//레코드 갯수계산
		int count=boardService.countArticle(search_option,keyword);
		
		Pager pager=new Pager(count,curPage);
		int start=pager.getPageBegin();
		int end=pager.getPageEnd(); 
		
		
		List<BoardDTO> list=boardService.listAll(
				search_option,keyword,start,end);//게시글 목록
		ModelAndView mav=new ModelAndView();
		HashMap<String,Object> map=new HashMap<>();//여러데이터를 묶어서 한꺼번에 보낼수있음
		map.put("list", list);//map에 자료저장
		map.put("count", count);
		map.put("pager", pager);//페이지를 위한 네비게이션
		map.put("search_option", search_option);
		map.put("keyword",keyword); 
		mav.setViewName("Board/list");//포워딩할 뷰의 이름
		mav.addObject("map",map);//모델앤뷰의 맵을 저장
		return mav;//보드/리스트.jsp로 이동
	}
	//글쓰기 폼페이지로 이동
	@RequestMapping("write.do")
	public String write() {
		return "Board/write";
	}

}

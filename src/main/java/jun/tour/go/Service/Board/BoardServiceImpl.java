package jun.tour.go.Service.Board;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jun.tour.go.Model.Board.DAO.BoardDAO;
import jun.tour.go.Model.Board.DTO.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	BoardDAO boardDao;
	
	@Override
	public void deleteFile(String fullName) {
		boardDao.deleteFile(fullName);
	}

	@Override
	public List<String> getAttach(int bno) {
		return boardDao.getAttach(bno);
	}
	
	//1.글쓰기-게시물 번호 생성
	//2.첨부파일 등록-게시물 번호 사용
	@Transactional
	@Override
	public void create(BoardDTO dto) throws Exception {
		boardDao.create(dto);
		
		String[] files=dto.getFiles(); //첨부파일 이름 배열
		if(files==null) return;
		for(String name : files) {
			boardDao.addAttach(name);
		}
	}

	@Override
	public BoardDTO read(int bno) throws Exception {
		return boardDao.read(bno);
	}

	@Transactional
	@Override
	public void update(BoardDTO dto) throws Exception {
		 boardDao.update(dto);//board 테이블 수정
		 //attach 테이블 수정
		 String[] files=dto.getFiles();
		 if(files==null) return;
		 for(String name : files) {
			 boardDao.updateAttach(name, dto.getBno());
		 }
	}

	@Transactional
	@Override
	public void delete(int bno) throws Exception {
		boardDao.delete(bno);
	}


	@Override
	public void increaseViewcnt(int bno,HttpSession session) throws Exception {
		long update_time=0;
		if(session.getAttribute("update_time_"+bno)!=null) {//최근에 조회수 올린시간
			update_time=(long)session.getAttribute("update_time_"+bno);
		}
		long current_time=System.currentTimeMillis();//일정 시간이 경과한 후 조회수 증가처리
		if(current_time - update_time > 24*24*60*1000) {//조회수 증가 처리 하루로 잡음
		boardDao.increateViewcnt(bno);//조회수를 올린 시간 저장
		session.setAttribute("update_time_"+bno, current_time);
	}
	}
	@Override
	public int countArticle(
			String search_option,String keyword) throws Exception {
		return boardDao.countArticle(search_option,keyword);
	}

	@Override
	public List<BoardDTO> listAll(String search_option, String keyword, int start, int end) 
			throws Exception {
		return boardDao.listAll(search_option, keyword, start, end);
	}

}

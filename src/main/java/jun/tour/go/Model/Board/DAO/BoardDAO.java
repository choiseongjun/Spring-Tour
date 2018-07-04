package jun.tour.go.Model.Board.DAO;

import java.util.List;

import javax.servlet.http.HttpSession;

import jun.tour.go.Model.Board.DTO.BoardDTO;


public interface BoardDAO {

	public void deleteFile(String fullName);//첨부파일 삭제
	public List<String> getAttach(int bno);//첨부파일 정보
	public void addAttach(String fullName);//첨부파일 저장
	public void updateAttach(String fullName,int bno);//첨부파일 수정
	public void create(BoardDTO dto) throws Exception;//글쓰기
	public void delete(int bno) throws Exception;//글삭제
	public void update(BoardDTO dto)throws Exception;//수정
	public List<BoardDTO> listAll(String search_option,String keyword,int start,int end) throws Exception;//글목록
	public void increateViewcnt(int bno) throws Exception;//조회수 증가
	public BoardDTO read(int bno) throws Exception;//레코드 조회
	public int countArticle(String search_option,String keyword) throws Exception;//레코드개수 계산
}

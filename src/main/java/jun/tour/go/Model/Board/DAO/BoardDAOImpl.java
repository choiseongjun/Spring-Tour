package jun.tour.go.Model.Board.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import jun.tour.go.Model.Board.DTO.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject//의존관계 주입(Dependency Injection,DI)
	SqlSession sqlSession;
	
	@Override
	public void deleteFile(String fullName) {

		sqlSession.delete("board.deleteFile",fullName);
	}

	@Override
	public List<String> getAttach(int bno) {
		return sqlSession.selectList("board.getAttach",bno);
	}

	@Override
	public void addAttach(String fullName) {
		sqlSession.insert("board.addAttach",fullName);
	}

	@Override
	public void updateAttach(String fullName, int bno) {
		Map<String, Object> map=new HashMap<>();
		map.put("fullname", fullName);//첨부파일 이름
		map.put("bno", bno);//게시물 번호
		sqlSession.insert("board.updateAttach",map);
	}

	@Override
	public void create(BoardDTO dto) throws Exception {
		sqlSession.insert("board.insert",dto);
	}

	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete("board.delete",bno);
	}

	@Override
	public List<BoardDTO> listAll(String search_option,String keyword,int start, int end) throws Exception {
		Map<String, Object> map=new HashMap<>();
		map.put("search_option", search_option);
		map.put("keyword", "%"+keyword+"%");
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("board.listAll",map);
	}
	//조회수 증가 처리
	@Override
	public void increateViewcnt(int bno) throws Exception {
		sqlSession.update("board.increaseViewcnt",bno);
	}

	@Override
	public int countArticle(String search_option,String keyword) throws Exception {
		Map<String, String> map=new HashMap<>();
		map.put("search_option",search_option);
		map.put("keyword", "%"+keyword+"%");
		return sqlSession.selectOne("board.countArticle",map);
	}

	@Override
	public BoardDTO read(int bno) throws Exception {
		return sqlSession.selectOne("board.read",bno);
	}

	@Override
	public void update(BoardDTO dto) throws Exception {
		sqlSession.update("board.update",dto);
		
	}

}

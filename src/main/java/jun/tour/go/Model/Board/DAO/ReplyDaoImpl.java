package jun.tour.go.Model.Board.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import jun.tour.go.Model.Board.DTO.ReplyDTO;
@Repository
public class ReplyDaoImpl implements ReplyDao {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<ReplyDTO> list(int bno) {
		return sqlSession.selectList("reply.listReply",bno);
	}

	@Override
	public int count(int bno) {
		return 0;
	}
	//댓글 추가
	@Override
	public void create(ReplyDTO dto) {
		sqlSession.insert("reply.insertReply",dto);
	}

}

package jun.tour.go.Service.Board;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import jun.tour.go.Model.Board.DAO.ReplyDao;
import jun.tour.go.Model.Board.DTO.ReplyDTO;
@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	ReplyDao replyDao;
	
	@Override
	public List<ReplyDTO> list(int bno) {
		// TODO Auto-generated method stub
		return replyDao.list(bno);
	}

	@Override
	public int count(int bno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void create(ReplyDTO dto) {//댓글쓰기
		replyDao.create(dto);
	}

}

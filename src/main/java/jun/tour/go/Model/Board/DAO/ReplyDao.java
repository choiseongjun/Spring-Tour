package jun.tour.go.Model.Board.DAO;

import java.util.List;

import jun.tour.go.Model.Board.DTO.ReplyDTO;

public interface ReplyDao {
	public List<ReplyDTO> list(int bno);
	public int count(int bno);
	public void create(ReplyDTO dto);
}

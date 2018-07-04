package jun.tour.go.Service.Board;

import java.util.List;

import jun.tour.go.Model.Board.DTO.ReplyDTO;

public interface ReplyService {

	public List<ReplyDTO> list(int bno);
	public int count(int bno);
	public void create(ReplyDTO dto);
	
}

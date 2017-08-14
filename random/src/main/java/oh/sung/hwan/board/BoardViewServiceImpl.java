package oh.sung.hwan.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardViewServiceImpl implements BoardViewService {
	@Autowired
	BoardViewDAO dao;
	@Override
	public List<BoardViewVO> boardView() {
		System.out.println(dao.boardView());
		return dao.boardView();
	}

}

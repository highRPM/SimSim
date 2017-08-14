package oh.sung.hwan.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardViewDAOImpl implements BoardViewDAO {
	@Autowired
	SqlSessionTemplate session;
	@Override
	public List<BoardViewVO> boardView() {
		
		return session.selectList("oh.sung.board.boardList");
	}

}

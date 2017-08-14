package oh.sung.hwan.crawling;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CrawlerDAOImpl implements CrawlerDAO {
	@Autowired
	SqlSessionTemplate session;
	@Override
	public void insertComment(String insertData) {
		session.insert("oh.sung.comment.InsertComment", insertData);
		
	}

}

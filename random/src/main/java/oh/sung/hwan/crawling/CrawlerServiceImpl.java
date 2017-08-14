package oh.sung.hwan.crawling;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("crawlservice")
public class CrawlerServiceImpl implements CrawlerService {
	@Autowired
	CrawlerDAO dao;
	@Override
	public void insertComment(String insertData) {
		dao.insertComment(insertData);
	}

}

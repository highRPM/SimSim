package oh.sung.hwan.crawling;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CrawlingController {
	@Autowired
	CrawlerService service;
	
	@RequestMapping(value="/crawling.do", method=RequestMethod.GET)
	public ModelAndView crawlingView(){
		ArrayList<String> bigList = new ArrayList<String>();
		ModelAndView mav = new ModelAndView();
		System.out.println("�帣���");
		Crawler craw = new Crawler();
		bigList=craw.webCrawling();
		int bigListSize = bigList.size();
		for(int i=0; i<bigListSize; i++){
			System.out.println(bigList.get(i));
			service.insertComment(bigList.get(i));
		}
		System.out.println(bigList.size());
		//System.out.println(field);
		mav.setViewName("crawling");
		return mav;
	}
}

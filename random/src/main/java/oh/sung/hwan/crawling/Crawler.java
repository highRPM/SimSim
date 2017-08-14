package oh.sung.hwan.crawling;

import java.io.IOException;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

@Controller
public class Crawler {
	@Autowired
	@Qualifier("crawlservice")
	CrawlerService service;
	
	ArrayList<String> commentURList = new ArrayList<String>();
	ArrayList<String> replyComment = new ArrayList<String>();
	Document doc = null;
	int i = 0;
	public ArrayList<String> webCrawling(){
		
		//ArrayList<String> urlList = new ArrayList<String>();
			for(i=780100; i<790000; i++){
				try{
				doc = insertPage(i);
				//Thread.sleep(1000);
				}catch (Exception e) {
					e.printStackTrace();
				}
				if(doc != null){
					Element ele = doc.select("div.more_comment a").first();
					//System.out.println(ele.attr("href"));
					commentCrawling(ele.attr("href"));//��۸�� ���� ��ũ
					commentCrawlingList(commentURList);
					commentURList = new ArrayList<String>();//��ũ ����� �ߺ��ǰ� ���̴� �� �����ϱ� ���� �ʱ�ȭ �۾�
					System.out.println(i+"��° ������");
				}
			}
			return replyComment;
		//return urlList.get(0);
	}
	public Document insertPage(int pageNum){
		Document pageDoc = null;
		try {
			pageDoc = Jsoup.connect("http://m.cafe.daum.net/ok1221/9Zdf/"+pageNum+"?svc=kakaotalkTab&bucket=toros_cafe_channel_gamma").userAgent("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36").get();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			
		}
		return pageDoc;
	}
	public String commentCrawling(String comment){
		
		try{
			doc = Jsoup.connect("http://m.cafe.daum.net"+comment).get();
			if(doc != null){
				
				Elements eleNextLinks = doc.select("a.link_page");//��� ������ ��ũ �������� ��
				
				for(int j=0; j<eleNextLinks.size(); j++){
					Element eleNextLink = eleNextLinks.get(j);
					
					commentURList.add(eleNextLink.attr("href"));
					if(j==eleNextLinks.size()-1){
						Element nxtPage = doc.select("a.btn_next").first();//���������� �������� ��ũ
						
						commentURList.add(nxtPage.attr("href"));
					
						commentCrawling(nxtPage.attr("href"));
					}
				}
			
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return "";
	}
	public void commentCrawlingList(ArrayList<String> commentUrl){
		String nayong ="";
		for(int i=0; i<commentUrl.size(); i++){
			try {
				doc = Jsoup.connect("http://m.cafe.daum.net"+commentUrl.get(i)).get();
				if(doc != null){
					Elements eleComments = doc.select("span.txt_detail");
					for(int j=0; j<eleComments.size(); j++){
					Element eleComment = eleComments.get(j);
					nayong = eleComment.text();
					System.out.println(nayong);
					replyComment.add(nayong);
					}
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}

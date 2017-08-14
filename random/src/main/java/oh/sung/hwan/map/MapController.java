package oh.sung.hwan.map;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MapController {
	
	@RequestMapping(value="/map/mapView.do", method=RequestMethod.GET)
	public ModelAndView mapView(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("choList","초미세");
		mav.addObject("mise","미세");
		mav.setViewName("mapView");
		return mav;
	}
	
	@RequestMapping(value="/map/mapChoose.do", method=RequestMethod.GET)
	public ModelAndView pm25Mise(String choose) throws Exception{
		System.out.println(choose);
		//JSONObject job = new JSONObject();
		
		ModelAndView mav = new ModelAndView();
		BufferedReader br = null;
		
		StringBuilder urlBuilder = new StringBuilder("http://openapi.airkorea.or.kr/openapi/services/rest/ArpltnInforInqireSvc/getCtprvnMesureLIst");
		urlBuilder.append("?"+URLEncoder.encode("ServiceKey","UTF-8")+"=MVghWtkyNtaDuEmTiSo6fx93hrmYkzGaoTZdY7DLl%2Ba7ggACM1Pn3voHJPygvCfHXTzY8kngUr9aU8ldRrDZyA%3D%3D");
		urlBuilder.append("&"+URLEncoder.encode("dataGubun", "UTF-8")+"="+URLEncoder.encode("HOUR", "UTF-8"));
		urlBuilder.append("&"+URLEncoder.encode("numOfRows", "UTF-8")+"="+URLEncoder.encode("2", "UTF-8"));
		urlBuilder.append("&"+URLEncoder.encode("_returnType", "UTF-8")+"="+URLEncoder.encode("json", "UTF-8"));
	
		if(choose.equals("PM25")){
			urlBuilder.append("&"+URLEncoder.encode("itemCode", "UTF-8")+"="+URLEncoder.encode("PM25", "UTF-8"));
			mav.addObject("mise", "PM25");
		}else if(choose.equals("PM10")){
			System.out.println(choose+"����");
			urlBuilder.append("&"+URLEncoder.encode("itemCode", "UTF-8")+"="+URLEncoder.encode("PM10", "UTF-8"));
			mav.addObject("mise", "PM10");
		}else if(choose.equals("nucle")){
			
		}else{
			mav.addObject("mise", "PM10");
			urlBuilder.append("&"+URLEncoder.encode("itemCode", "UTF-8")+"="+URLEncoder.encode("PM25", "UTF-8"));
		}
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection)url.openConnection();
		
		br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
		
		StringBuilder line = new StringBuilder();
		String readLine =null;
		
		while((readLine=br.readLine())!=null){
			line.append(readLine);
		}
		
		//job.put("result", line);
	
		mav.addObject("choList",line);
		mav.setViewName("mapView");

		//for���� if���� ���ؼ� ������� �� �ִ� ������ ���� �� ����
		return mav;
	}
	@RequestMapping(value="/map/foodRandom.do", method=RequestMethod.GET)
	public ModelAndView foodRandom(){
		ModelAndView mav = new ModelAndView();
		//mav.addObject("choList", "food");
		mav.setViewName("foodView");
		return mav;
	}
}

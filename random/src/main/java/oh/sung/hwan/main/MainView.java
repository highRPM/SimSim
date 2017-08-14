package oh.sung.hwan.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class MainView {

	@RequestMapping(value="/main.do")
	public String mainLayout(){
		return "mainLayout";
	}
}

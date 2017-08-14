package oh.sung.hwan.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class BoardViewController {
	@Autowired
	BoardViewService service;
	@RequestMapping(value="/board/boardView.do", method=RequestMethod.GET)
	public ModelAndView boardView(){
		ModelAndView mav = new ModelAndView();
		List<BoardViewVO> boardView = service.boardView();
		mav.addObject("boardList", boardView);
		mav.setViewName("boardView");
		return mav;
	}
}

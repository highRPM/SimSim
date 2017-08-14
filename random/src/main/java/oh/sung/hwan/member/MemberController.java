package oh.sung.hwan.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("loginUser")
public class MemberController {
	@Autowired
	MemberService service;
	
	@RequestMapping(value="/signUp.do", method=RequestMethod.GET)
	public String memberView(){
		return "signUp";
	}
	
	private ShaPasswordEncoder encoder = new ShaPasswordEncoder(256);
	@RequestMapping(value="/signUp.do", method=RequestMethod.POST)
	public String memberInsert(MemberDTO userInfo){
		String shaPass = encoder.encodePassword(userInfo.getPass(), null);
		System.out.println(userInfo);
		userInfo.setRole("ROLE_USER");
		userInfo.setPass(shaPass);
		service.memberInsert(userInfo);
		return "mainLayout";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login(){
		return "login";
	}
	
	/*@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public ModelAndView login(MemberDTO loginUser){
		ModelAndView mav = new ModelAndView();
		MemberDTO dto = service.login(loginUser);
		if(dto==null){
			mav.addObject("check", "null");
			mav.setViewName("login");
		}else{
			mav.addObject("loginUser", dto);
			mav.setViewName("mainView/mainView");
		}
		System.out.println(dto);
		return mav;
	}*/
	@RequestMapping(value="/emailCheck.do", method=RequestMethod.POST)
	public @ResponseBody String emailCheck(@RequestParam String email){

		System.out.println(email);
		String count=service.emailCheck(email);
		return count;
	}
	/*@RequestMapping(value="/logout.do", method=RequestMethod.GET)
	public String logout(SessionStatus status){
		status.setComplete();
		return "redirect:/main.do";
	}*/
}

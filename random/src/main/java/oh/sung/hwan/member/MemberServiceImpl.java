package oh.sung.hwan.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDAO dao;
	@Override
	public String emailDuplication(String eamil) {
		
		return null;
	}

	@Override
	public void memberInsert(MemberDTO userInfo) {
		dao.memberInsert(userInfo);
		
	}

	@Override
	public String emailCheck(String email) {
		
		return dao.emailCheck(email);
	}

	@Override
	public MemberDTO login(MemberDTO loginInfo) {
		return dao.login(loginInfo);
	}

}

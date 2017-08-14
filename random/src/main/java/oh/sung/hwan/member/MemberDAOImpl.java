package oh.sung.hwan.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	SqlSessionTemplate session;
	@Override
	public String emailDuplication(String email) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void memberInsert(MemberDTO userInfo) {
		session.insert("oh.sung.hwan.userInsert", userInfo);
	}
	@Override
	public String emailCheck(String email) {
		
		return session.selectOne("oh.sung.hwan.emailCheck", email);
	}
	@Override
	public MemberDTO login(MemberDTO loginInfo) {
		return session.selectOne("oh.sung.hwan.userLogin", loginInfo);
	}
}

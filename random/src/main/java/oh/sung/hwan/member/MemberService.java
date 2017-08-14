package oh.sung.hwan.member;

public interface MemberService {
	public String emailDuplication(String eamil);
	public void memberInsert(MemberDTO userInfo);
	public String emailCheck(String email);
	public MemberDTO login(MemberDTO loginInfo);
}

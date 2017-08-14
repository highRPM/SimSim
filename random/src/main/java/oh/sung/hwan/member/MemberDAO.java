package oh.sung.hwan.member;

public interface MemberDAO {
	public String emailDuplication(String email);
	public void memberInsert(MemberDTO userInfo);
	public String emailCheck(String email);
	public MemberDTO login(MemberDTO loginInfo);
}

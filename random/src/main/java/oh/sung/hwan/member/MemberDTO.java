package oh.sung.hwan.member;

public class MemberDTO {
	int mem_no;
	String email;
	String pass;
	String name;
	String tel;
	String role;
	
	public MemberDTO() {
		// TODO Auto-generated constructor stub
	}

	public MemberDTO(int mem_no, String email, String pass, String name, String tel, String role) {
		super();
		this.mem_no = mem_no;
		this.email = email;
		this.pass = pass;
		this.name = name;
		this.tel = tel;
		this.role = role;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "MemberDTO [mem_no=" + mem_no + ", email=" + email + ", pass=" + pass + ", name=" + name + ", tel=" + tel
				+ ", role=" + role + "]";
	}
	
}

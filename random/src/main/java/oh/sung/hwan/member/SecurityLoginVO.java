package oh.sung.hwan.member;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class SecurityLoginVO extends User {
	String email;
	String pass;
	String name;
	String tel;
	String role;
	
	public SecurityLoginVO(String email, String pass, boolean enabled, boolean accountNonExpired,
			boolean credentialsNonExpired, boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities) {
		super(email, pass, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
	}
	
	public SecurityLoginVO(String email, String pass, boolean enabled, boolean accountNonExpired,
			boolean credentialsNonExpired, boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities, String name) {
		super(email, pass, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
		this.name = name;
	}
	public SecurityLoginVO(String email, String pass, boolean enabled, boolean accountNonExpired,
			boolean credentialsNonExpired, boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities, String name, String tel, String role) {
		super(email, pass, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
		this.name = name;
		this.tel = tel;
		this.role = role;
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
		return "SecurityLoginVO [email=" + email + ", pass=" + pass + ", name=" + name + ", tel=" + tel + ", role="
				+ role + "]";
	}
	
	
	
}

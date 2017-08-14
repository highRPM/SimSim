package oh.sung.hwan.member;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class SecurityLoginService implements UserDetailsService{
	@Autowired
	SqlSessionTemplate session;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Map<String, Object> user = session.selectOne("oh.sung.hwan.securityLogin", username);
		System.out.println("security"+user);
		System.out.println("username"+username);
		UserDetails loginUser = null;
		List<GrantedAuthority> gas = new ArrayList<GrantedAuthority>();
		gas.add(new SimpleGrantedAuthority(user.get("authority").toString()));
		if(user.get("name") != null){
			loginUser = new SecurityLoginVO(user.get("username").toString(), user.get("password").toString(), true, true, true, true, gas, user.get("name").toString(), user.get("tel").toString(), user.get("authority").toString());
		}else{
			loginUser = new SecurityLoginVO("null", "null", true, true, true, true, gas, "null", "null", "null");
			
		}
		
		//System.out.println("!!!!"+user.get("USERNAME"));
		System.out.println("로그인유저"+loginUser);
		return loginUser;
	}
}

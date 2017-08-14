package oh.sung.hwan.fw;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.User;

import oh.sung.hwan.member.SecurityLoginService;

public class CustomAuthenticationProvider implements AuthenticationProvider {

	SecurityLoginService sercurityService;
	private ShaPasswordEncoder encoder;
	
	public CustomAuthenticationProvider(SecurityLoginService securityService, ShaPasswordEncoder encoder){
		super();
		this.sercurityService = securityService;
		this.encoder = encoder;
		System.out.println("custom����"+securityService);
	}
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		String username = authentication.getName();
		String pass = (String)authentication.getCredentials();
		Object obj = authentication.getPrincipal();
		
		UsernamePasswordAuthenticationToken loginUser = null;
		
		System.out.println(username);
		System.out.println(pass);
		System.out.println(obj);
		
		User user = (User)sercurityService.loadUserByUsername(username);
		boolean state = encoder.isPasswordValid(user.getPassword(), pass, null);
		
		if(state){
			System.out.println("들어옴");
			loginUser = new UsernamePasswordAuthenticationToken(user, pass, user.getAuthorities());
			System.out.println("로그인유저"+loginUser);
		}else{
			System.out.println("로그인실패");
			
		}
		
		return loginUser;
	}

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return true;
	}
	
}

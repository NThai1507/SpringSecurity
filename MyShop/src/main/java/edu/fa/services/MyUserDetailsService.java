package edu.fa.services;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import edu.fa.entities.Role;
import edu.fa.entities.Users;
import edu.fa.logging.LogFactory;
import edu.fa.repository.UserRepositorys;

public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	UserRepositorys userRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Users user = null;
		try {
			user = userRepository.getUserByUsername(username);
		} catch (Exception e) {
			LogFactory.getlogger().info("Userdetail service fail!!");
			e.printStackTrace();
		}
		if (user == null) {
			throw new UsernameNotFoundException("User not found");
		} else {
			Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
			Set<Role> roles = user.getRoles();
			for (Role role : roles) {
				grantedAuthorities.add(new SimpleGrantedAuthority(role.getName()));
			}
			return new org.springframework.security.core.userdetails.User(user.getUserName(), user.getPassword(),
					grantedAuthorities);
		}

	}

}

package com.websystique.springmvc.service.impl;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.websystique.springmvc.model.User;
import com.websystique.springmvc.model.UserRole;
import com.websystique.springmvc.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Value("${org.zooark.web.url}")
	private String urlRest;

	public User findByUsername(String username) {
		/*String urlSelectUsername = urlRest + "selectUser/{username}";
		
		Map<String, String> params = new HashMap<>();
		params.put("username", username);
		RestTemplate restTemplate = new RestTemplate();
		User user = restTemplate.getForObject(urlSelectUsername, User.class, params);*/
		
		Set<UserRole> setUserRole = new HashSet<>();
		UserRole userRole = new UserRole();
		userRole.setId(1);
		userRole.setRole("ADMIN");
		setUserRole.add(userRole);
		
		User user = new User();
		user.setEnable("1");
		user.setId(1);
		user.setPassword("$2a$10$5C5H2zCIwcyAH00Zw2NKQOokffQYF/d8KBqPt6Ir0EkIS06r8n7tm");
		user.setUsername("hotani");
		user.setUserRoles(setUserRole);
		
		return user;
	}

	public boolean isUserSSOUnique(Integer id, String username) {
		User user = findByUsername(username);
		return ( user == null || ((id != null) && (user.getId() == id)));
	}
	
}

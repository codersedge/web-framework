package com.codersedge.framework.dto;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;

import com.codersedge.framework.model.User;

public class CurrentUser extends org.springframework.security.core.userdetails.User {

	private User user;
	private Collection<? extends GrantedAuthority> authorities;

	public CurrentUser(User user, Collection<? extends GrantedAuthority> authorities) {
		super(user.getEmail(), user.getPasswordHash(), user.isEnabled(), true, true, true, authorities);
		this.user = user;
		this.authorities = authorities;
	}

	public User getUser() {
		return user;
	}

	public Long getId() {
		return user.getId();
	}

	@SuppressWarnings("unchecked")
	public Collection<GrantedAuthority> getAuthorities() {
		return (Collection<GrantedAuthority>) authorities;
	}

}
package com.codersedge.framework.dto;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.security.access.prepost.PreAuthorize;

import com.codersedge.framework.model.Role;
import com.codersedge.framework.model.User;

public class UserUpdateForm {
	
	private long id;

    @NotEmpty
    private String email = "";

    private String password = "";

    private String passwordRepeated = "";

    @NotNull
    private Role role = Role.USER;

	public UserUpdateForm(User user) {
		this.id = user.getId();
		this.email = user.getEmail();
		this.role = user.getRole();
	}

	public long getId() {
		return id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPasswordRepeated() {
		return passwordRepeated;
	}

	public void setPasswordRepeated(String passwordRepeated) {
		this.passwordRepeated = passwordRepeated;
	}

	public Role getRole() {
		return role;
	}

	@PreAuthorize("hasAuthority('ADMIN')")
	public void setRole(Role role) {
		this.role = role;
	}

}
package com.codersedge.framework.dto;

import java.util.Collection;

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
    private Collection<Role> role;
    
    public UserUpdateForm() {
	}

	public UserUpdateForm(User user) {
		this.id = user.getId();
		this.email = user.getEmail();
		this.role = user.getRoles();
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
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

	public Collection<Role> getRole() {
		return role;
	}

	@PreAuthorize("hasAuthority('ADMIN')")
	public void setRole(Collection<Role> role) {
		this.role = role;
	}

}
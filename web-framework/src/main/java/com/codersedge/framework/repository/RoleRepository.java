package com.codersedge.framework.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.codersedge.framework.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {

	/**
	 * @param role
	 * @return
	 */
	Role findByName(String role);
}
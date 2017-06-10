package com.codersedge.framework.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.codersedge.framework.dto.CurrentUser;
import com.codersedge.framework.model.Role;
import com.codersedge.framework.repository.RoleRepository;


@ControllerAdvice
public class UserControllerAdvice {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserControllerAdvice.class);
    
    @Autowired
    private RoleRepository roleRepository;

    @ModelAttribute("currentUser")
    public CurrentUser getCurrentUser(Authentication authentication) {
        return (authentication == null) ? null : (CurrentUser) authentication.getPrincipal();
    }
    
    @ModelAttribute("roles")
    public List<Role> getRoles() {
        return roleRepository.findAll();
    }


}
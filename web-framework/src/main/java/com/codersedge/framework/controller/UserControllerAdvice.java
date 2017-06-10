package com.codersedge.framework.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.codersedge.framework.dto.CurrentUser;
import com.codersedge.framework.model.Role;


@ControllerAdvice
public class UserControllerAdvice {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserControllerAdvice.class);

    @ModelAttribute("currentUser")
    public CurrentUser getCurrentUser(Authentication authentication) {
        return (authentication == null) ? null : (CurrentUser) authentication.getPrincipal();
    }
    
    @ModelAttribute("roles")
    public Role[] getRoles() {
        return Role.values();
    }


}
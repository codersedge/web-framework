package com.codersedge.framework.service;

import org.springframework.stereotype.Service;

import com.codersedge.framework.dto.CurrentUser;
import com.codersedge.framework.model.Role;

@Service
public class CurrentUserService implements ICurrentUserService {

    @Override
    public boolean canAccessUser(CurrentUser currentUser, Long userId) {
        return currentUser != null
                && (currentUser.getRole() == Role.ADMIN || currentUser.getId().equals(userId));
    }

}
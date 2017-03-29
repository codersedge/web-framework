package com.codersedge.framework.service;

import com.codersedge.framework.dto.CurrentUser;

public interface CurrentUserService {
    boolean canAccessUser(CurrentUser currentUser, Long userId);
}
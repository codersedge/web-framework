package com.codersedge.framework.service;

import com.codersedge.framework.dto.CurrentUser;

public interface ICurrentUserService {
    boolean canAccessUser(CurrentUser currentUser, Long userId);
}
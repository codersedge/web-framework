package com.codersedge.framework.service;

import java.util.Collection;
import java.util.Optional;

import com.codersedge.framework.dto.UserCreateForm;
import com.codersedge.framework.model.User;

public interface UserService {

    Optional<User> getUserById(long id);

    Optional<User> getUserByEmail(String email);

    Collection<User> getAllUsers();

    User create(UserCreateForm form);

}
package com.codersedge.framework.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.codersedge.framework.dto.CurrentUser;
import com.codersedge.framework.dto.UserCreateForm;
import com.codersedge.framework.dto.UserUpdateForm;
import com.codersedge.framework.security.AuthenticationFacade;
import com.codersedge.framework.service.IUserService;

@Component
public class UserUpdateFormValidator implements Validator {

    private final IUserService userService;
    private AuthenticationFacade authenticationFacade;

    @Autowired
    public UserUpdateFormValidator(IUserService userService, AuthenticationFacade authenticationFacade) {
        this.userService = userService;
        this.authenticationFacade = authenticationFacade;
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return clazz.equals(UserUpdateForm.class);
    }

    @Override
    public void validate(Object target, Errors errors) {
    	UserUpdateForm form = (UserUpdateForm) target;
        validatePasswords(errors, form);
        validateEmail(errors, form);
    }

    private void validatePasswords(Errors errors, UserUpdateForm form) {
        if (!form.getPassword().equals(form.getPasswordRepeated())) {
            errors.reject("password.no_match", "Passwords do not match");
        }
    }

    private void validateEmail(Errors errors, UserUpdateForm form) {
        if (!((CurrentUser) authenticationFacade.getAuthentication().getPrincipal()).getUsername().equalsIgnoreCase(form.getEmail())
        		&& userService.getUserByEmail(form.getEmail()).isPresent()) {
            errors.reject("email.exists", "User with this email already exists");
        }
    }
}
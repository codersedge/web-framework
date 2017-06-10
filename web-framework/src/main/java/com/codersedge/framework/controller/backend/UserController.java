package com.codersedge.framework.controller.backend;

import java.util.NoSuchElementException;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.codersedge.framework.dto.CurrentUser;
import com.codersedge.framework.dto.UserCreateForm;
import com.codersedge.framework.dto.UserUpdateForm;
import com.codersedge.framework.service.IUserService;
import com.codersedge.framework.validator.UserCreateFormValidator;
import com.codersedge.framework.validator.UserUpdateFormValidator;

@Controller
@RequestMapping("/backend/user")
public class UserController {

    private final IUserService userService;
    private final UserCreateFormValidator userCreateFormValidator;
    private final UserUpdateFormValidator userUpdateFormValidator;

    @Autowired
    public UserController(IUserService userService, UserCreateFormValidator userCreateFormValidator,
    		UserUpdateFormValidator userUpdateFormValidator) {
        this.userService = userService;
        this.userCreateFormValidator = userCreateFormValidator;
        this.userUpdateFormValidator = userUpdateFormValidator;
    }

    @InitBinder("userCreateForm")
    public void initUserCreateFormBinder(WebDataBinder binder) {
        binder.addValidators(userCreateFormValidator);
    }
    
    @InitBinder("userUpdateForm")
    public void initUserUpdateFormBinder(WebDataBinder binder) {
        binder.addValidators(userUpdateFormValidator);
    }
    
    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping("")
    public ModelAndView getUsersPage() {
        return new ModelAndView("backend/user/users", "users", userService.getAllUsers());
    }
    
    @RequestMapping("/profile")
    public ModelAndView getProfilePage(Authentication authentication) {
    	CurrentUser currentUser = (CurrentUser) authentication.getPrincipal();
        return new ModelAndView("backend/user/profile", "user", userService.getUserById(currentUser.getId())
                .orElseThrow(() -> new NoSuchElementException(String.format("User=%s not found", currentUser.getId()))));
    }

    @PreAuthorize("@currentUserService.canAccessUser(principal, #id)")
    @RequestMapping("/{id}")
    public ModelAndView getUserPage(@PathVariable Long id) {
        return new ModelAndView("user", "user", userService.getUserById(id)
                .orElseThrow(() -> new NoSuchElementException(String.format("User=%s not found", id))));
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public ModelAndView getUserCreatePage() {
        return new ModelAndView("backend/user/create", "userCreateForm", new UserCreateForm());
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String handleUserCreateForm(@Valid @ModelAttribute("userCreateForm") UserCreateForm form, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "backend/user/create";
        }
        try {
            userService.create(form);
        } catch (DataIntegrityViolationException e) {
            bindingResult.reject("email.exists", "Email already exists");
            return "backend/user/create";
        }
        return "redirect:/backend/user";
    }
    
    @PreAuthorize("@currentUserService.canAccessUser(principal, #id)")
    @RequestMapping(value = "/{id}/update", method = RequestMethod.GET)
    public ModelAndView getUserUpdatePage(@PathVariable Long id) {
        return new ModelAndView("backend/user/update", "userUpdateForm", new UserUpdateForm(userService.getUserById(id).get()));
    }
    
    @PreAuthorize("@currentUserService.canAccessUser(principal, #id)")
    @RequestMapping(value = "/{id}/update", method = RequestMethod.POST)
    public String handleUserUpdateForm(@Valid @ModelAttribute("userUpdateForm") UserUpdateForm form, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "backend/user/update";
        }
        try {
            userService.update(form);
        } catch (DataIntegrityViolationException e) {
            bindingResult.reject("email.exists", "Email already exists");
            return "backend/user/update";
        }
        return "redirect:/backend/user";
    }
    
    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
    public String handleUserDelete(@PathVariable Long id) {
        try {
            userService.delete(id);
        } catch (DataIntegrityViolationException e) {
            return "backend/user";
        }
        return "redirect:/backend/user";
    }

}
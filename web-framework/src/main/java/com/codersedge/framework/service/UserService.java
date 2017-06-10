package com.codersedge.framework.service;

import java.util.Arrays;
import java.util.Collection;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.codersedge.framework.dto.CurrentUser;
import com.codersedge.framework.dto.UserCreateForm;
import com.codersedge.framework.dto.UserUpdateForm;
import com.codersedge.framework.model.User;
import com.codersedge.framework.repository.RoleRepository;
import com.codersedge.framework.repository.UserRepository;
import com.codersedge.framework.security.AuthenticationFacade;

@Service
public class UserService implements IUserService {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private Authentication authentication;

    @Autowired
    public UserService(UserRepository userRepository, RoleRepository roleRepository, AuthenticationFacade authenticationFacade) {
        this.userRepository = userRepository;
        this.authentication = authenticationFacade.getAuthentication();
        this.roleRepository = roleRepository;
    }

    @Override
    public Optional<User> getUserById(long id) {
        return Optional.ofNullable(userRepository.findOne(id));
    }
    
    @Override
    public Optional<User> getUserByEmail(String email) {
        return userRepository.findOneByEmail(email);
    }

    @Override
    public Collection<User> getAllUsers() {
        return userRepository.findAll(new Sort("email"));
    }

    @Override
    public User create(UserCreateForm form) {
        User user = new User();
        user.setEmail(form.getEmail());
        user.setPasswordHash(new BCryptPasswordEncoder().encode(form.getPassword()));
        user.setRoles(Arrays.asList(roleRepository.findByName(form.getRole())));
        return userRepository.save(user);
    }

	@Override
	public User update(UserUpdateForm form) {
		User user = userRepository.findOne(form.getId());
		if(!user.getEmail().equalsIgnoreCase(form.getEmail())) {
			user.setEmail(form.getEmail());
		}
		if(!form.getPassword().isEmpty()) {
			user.setPasswordHash(new BCryptPasswordEncoder().encode(form.getPassword()));
		}
//		if(!user.getRole().equals(form.getRole()) && ((CurrentUser) authentication.getPrincipal()).getRole().equals("ADMIN")) {
//			user.setRoles(form.getRole());
//		}
		return userRepository.save(user);
		
	}

	@Override
	public void delete(long id) {
		userRepository.delete(id);
	}

}
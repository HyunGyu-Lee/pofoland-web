package com.hst.pofoland.biz.user.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Component;

import com.hst.pofoland.biz.user.service.UserService;

import lombok.extern.slf4j.Slf4j;

@Component("authProvider")
@Slf4j
public class AuthProvider implements AuthenticationProvider{

    @Autowired
    UserService userService;
    
    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        
        String id = authentication.getName();
        String password = authentication.getCredentials().toString();

        
        log.info("인증 검사 =============== id : {}  password : {}", id, password);
        
        
        return null;
    }

    @Override
    public boolean supports(Class<?> authentication) {
        // TODO Auto-generated method stub
        return false;
    }

}
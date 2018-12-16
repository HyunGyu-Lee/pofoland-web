package com.hst.pofoland.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.configuration.EnableGlobalAuthentication;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.hst.pofoland.biz.user.security.AuthProvider;

/**
 * Spring Security Java Configuration
 *
 * @author 김영훈
 * @since 2018. 7. 1.
 * @see
 *
 */
@EnableWebSecurity
@EnableGlobalAuthentication
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
    @Autowired
    AuthProvider authProvider;
    
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers(
            "/static/**"
        );
    }
 
    
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        // 로그인 설정
        http.authorizeRequests()
            // ROLE_USER, ROLE_ADMIN으로 권한 분리 유알엘 정의
            .antMatchers("/user/login").permitAll()
            .antMatchers("/user/register").permitAll()
            .antMatchers("/portfolios/**").permitAll()
            .antMatchers("/api/**").permitAll()
            .antMatchers("/").permitAll()
            .antMatchers("/**").access("ROLE_USER")
            .antMatchers("/admin/**").access("ROLE_ADMIN")
            .anyRequest().authenticated();
            
        http.csrf().disable();
        
        http.formLogin()
            .loginPage("/user/login")
            .defaultSuccessUrl("/")
//            .failureHandler(authFailureHandler)
//            .successHandler(authSuccessHandler)
            .usernameParameter("userEmail")
            .passwordParameter("userPwd");
        
        http.authenticationProvider(authProvider);
    }
}

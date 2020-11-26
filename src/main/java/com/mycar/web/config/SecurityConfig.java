package com.mycar.web.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.mycar.web.security.MycarAuthenticationSuccessHandler;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
   
   @Autowired
   private DataSource dataSource;
   
   @Override
   protected void configure(HttpSecurity http) throws Exception {
      http.authorizeRequests()
         .antMatchers("/admin/**").hasAuthority("ADMIN")
      .and()
         .formLogin()
           .loginPage("/member/login")
           .loginProcessingUrl("/member/login")
           .defaultSuccessUrl("/main/index")
           .successHandler(new MycarAuthenticationSuccessHandler())
      .and()
         .logout()
            .logoutUrl("/member/logout")
            .logoutSuccessUrl("/main/index")
            .invalidateHttpSession(true)
      .and()
         .csrf()
            .disable();
   }
   
   @Override
   protected void configure(AuthenticationManagerBuilder auth) throws Exception {
      auth
      .jdbcAuthentication()
      .dataSource(dataSource)
      .usersByUsernameQuery("select userId id, pwd password , 1 enabled from memberTest where userId=?")
      .authoritiesByUsernameQuery("SELECT userId id, roleId from memberTest where userId=?")
      .passwordEncoder(new BCryptPasswordEncoder());
     
     
  }

}
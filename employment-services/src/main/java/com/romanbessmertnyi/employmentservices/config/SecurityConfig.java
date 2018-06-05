package com.romanbessmertnyi.employmentservices.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	DataSource dataSource;

	@Autowired
    @Qualifier("customUserDetailsService")
    UserDetailsService userDetailsService;
	
	@Autowired
    public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }
	
	@Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
	
	/*@Autowired
	public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {

		auth.jdbcAuthentication().dataSource(dataSource)
				.usersByUsernameQuery("select email, password, enabled from user_account where email=?")
				.authoritiesByUsernameQuery("SELECT u.email,\r\n" + "			 t.user_type_name \r\n"
						+ "			FROM public.user_account as u\r\n"
						+ "			INNER JOIN public.user_type as t ON u.user_type_id = t.id\r\n"
						+ "			WHERE u.email=?")
				.passwordEncoder(new BCryptPasswordEncoder());
	}*/

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
        	.antMatchers("/", "/home").permitAll()
	        .antMatchers("/admin/**").access("hasRole('ADMIN')")
	        .antMatchers("/user/**").access("hasRole('USER')")
	        .antMatchers("/employer/**").access("hasRole('EMPLOYER')")
	        .and().formLogin().loginPage("/login/user")
	        .defaultSuccessUrl("/home")
	        .successHandler(new AppAuthenticationSuccessHandler())
	        .failureUrl("/login/user?error=true")
	        .usernameParameter("email").passwordParameter("password")
	        .and().csrf()
	        .and().exceptionHandling().accessDeniedPage("/403");
	}

}

package employmentservices.config;

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

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
        	.antMatchers("/", "/home").permitAll()
	        .antMatchers("/admin/**").access("hasRole('ADMIN')")
	        .antMatchers("/resumes/manage**", "/resumes/delete**", "/resumes/edit**", "/resumes/post**")
	        .access("hasRole('USER')")
	        .antMatchers("/jobs/manage**", "/jobs/delete**", "/jobs/edit**", "/jobs/post**")
	        .access("hasRole('EMPLOYER')")
	        .antMatchers("/companies/manage**", "/companies/delete**", "/companies/edit**", "/companies/post**")
	        .access("hasRole('EMPLOYER')")
	        .and().formLogin().loginPage("/login/user")
	        .defaultSuccessUrl("/home")
	        .successHandler(new AppAuthenticationSuccessHandler())
	        .failureUrl("/login/user?error=true")
	        .usernameParameter("email").passwordParameter("password")
	        .and().csrf()
	        .and().exceptionHandling().accessDeniedPage("/403");
	}
	
	@Autowired
    public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }
	
	@Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

}

package employmentservices.config;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@EnableWebMvc
@Configuration
@ComponentScan(basePackages = { "employmentservices.*" })
@EnableJpaRepositories(basePackages= { "employmentservices.dao" })
@EnableTransactionManagement
@EntityScan(basePackages= { "employmentservices.model" })
public class AppConfig implements WebMvcConfigurer{
	
	@Bean
	public InternalResourceViewResolver viewResolver() {
	    InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
	    viewResolver.setViewClass(JstlView.class);
	    viewResolver.setPrefix("/WEB-INF/jsp/");
	    viewResolver.setSuffix(".jsp");
	    return viewResolver;
	}
	
	@Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
    }
}

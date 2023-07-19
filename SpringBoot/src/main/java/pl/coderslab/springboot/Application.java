package pl.coderslab.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
    @Bean
    public FilterRegistrationBean<EnableUserFilter> loggingFilter(){
        FilterRegistrationBean<EnableUserFilter> registrationBean
                = new FilterRegistrationBean<>();
        registrationBean.setFilter(new EnableUserFilter());
        registrationBean.addUrlPatterns("/training/*");
        registrationBean.addUrlPatterns("/plan/*");
        registrationBean.addUrlPatterns("/user/*");
        registrationBean.setOrder(1);
        return registrationBean;
    }
}

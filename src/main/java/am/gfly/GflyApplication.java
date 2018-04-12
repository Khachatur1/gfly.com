package am.gfly;

import am.gfly.model.User;
import am.gfly.model.UserType;
import am.gfly.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@SpringBootApplication
@EnableWebMvc
public class GflyApplication extends WebMvcConfigurerAdapter{
@Autowired
    UserRepository userRepository;
    public static void main(String[] args) {
        SpringApplication.run(GflyApplication.class, args);
    }


    @Bean
    public ViewResolver internalResourceViewResolver() {
        InternalResourceViewResolver bean = new InternalResourceViewResolver();
        bean.setViewClass(JstlView.class);
        bean.setPrefix("/WEB-INF/");
        bean.setSuffix(".jsp");
        return bean;


    }



    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

//    @Override
//    public void run(String... strings) throws Exception {
//        User user = new User();
//        user.setName("admin");
//        user.setSurname("admin");
//        user.setEmail("admin@mail.com");
//        user.setPassword("admin");
//        user.setType(UserType.ADMIN);
//        userRepository.save(user);
//    }
}

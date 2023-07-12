package pl.coderslab.springboot;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.springboot.user.CurrentUser;
import pl.coderslab.springboot.user.User;


@Controller
public class HomeController {
    @GetMapping("/")
    public String hello() {
        return "home/home";
    }
    @GetMapping("/admin/start")
    @ResponseBody
    public String helloAdmin() {
        return "Hello Admin";
    }
    @GetMapping("/admin")
    @ResponseBody
    public String admin(@AuthenticationPrincipal CurrentUser customUser) {
        User entityUser = customUser.getUser();
        return "Hello " + entityUser.getUsername();
    }
}

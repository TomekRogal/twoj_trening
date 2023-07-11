package pl.coderslab.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;


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
}

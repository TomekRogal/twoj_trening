package pl.coderslab.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class HomeController {
    @GetMapping("/")
    @ResponseBody
    public String hello() {
        return "Hello";
    }
    @GetMapping("/admin/start")
    @ResponseBody
    public String helloAdmin() {
        return "Hello Admin";
    }
}

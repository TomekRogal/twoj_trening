package pl.coderslab.springboot;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import pl.coderslab.springboot.user.CurrentUser;
import pl.coderslab.springboot.user.User;
import pl.coderslab.springboot.user.UserRepository;

@SessionAttributes("loggedUser")
@Controller
public class HomeController {
    private final UserRepository userRepository;

    public HomeController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping("/")
    public String hello(@AuthenticationPrincipal CurrentUser customUser, Model model) {
        if(customUser != null){
            model.addAttribute("loggedUser",userRepository.findById(customUser.getUser().getId()).get());
        }
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

package pl.coderslab.springboot.user;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
public class UserController {
    private final UserService userService;
    private final UserRepository userRepository;

    public UserController(UserService userService, UserRepository userRepository) {
        this.userService = userService;
        this.userRepository = userRepository;

    }
    @GetMapping("/create-user")
    @ResponseBody
    public String createUser() {
        User user = new User();
        user.setUsername("admin");
        user.setPassword("admin");
        userService.saveUser(user);
        return "admin";
    }
    @GetMapping("/login")
    public String login(){
        return "admin/admin-login";
    }
    @GetMapping("/logout")
    public String logout(){
        return "admin/admin-logout";
    }
    @GetMapping("/register")
    public String register(Model model) {
    model.addAttribute("user",new User());
        return "home/register";
    }
    @PostMapping("/register")
    public String addProcess(@RequestParam String confirm, @Valid User user, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return "home/register";
        }
        if(userService.findByUserName(user.getUsername()) != null)
        {
            model.addAttribute("register","failed");
            user.setUsername("");
            user.setPassword("");
            return "home/register";
        }
        if(!user.getPassword().equals(confirm)){
            model.addAttribute("pass","failed");
            return "home/register";
        }
       userService.saveUser(user);
        return "redirect:/login";
    }
    @GetMapping ("/delete")
    public String userDelete(){
        return "admin/delete";
    }
    @PostMapping("/delete")
    public String delete(@AuthenticationPrincipal CurrentUser customUser, HttpSession session) {
        userRepository.deleteById(customUser.getUser().getId());
        session.invalidate();
        return "redirect:/";
    }
}


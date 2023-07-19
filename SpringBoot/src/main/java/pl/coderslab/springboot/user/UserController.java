package pl.coderslab.springboot.user;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.springboot.plan.PlanRepository;
import pl.coderslab.springboot.training.TrainingRepository;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
public class UserController {
    private final UserService userService;
    private final UserRepository userRepository;
    private final TrainingRepository trainingRepository;
    private final PlanRepository planRepository;
    private final BCryptPasswordEncoder passwordEncoder;


    public UserController(UserService userService, UserRepository userRepository, TrainingRepository trainingRepository, PlanRepository planRepository, BCryptPasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.userRepository = userRepository;
        this.trainingRepository = trainingRepository;
        this.planRepository = planRepository;
        this.passwordEncoder = passwordEncoder;
    }
    @GetMapping("/login")
    public String login(){
        return "user/login";
    }

    @GetMapping("/register")
    public String register(Model model) {
    model.addAttribute("user",new User());
        return "user/register";
    }
    @PostMapping("/register")
    public String addProcess(@RequestParam String confirm, @Valid User user, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return "user/register";
        }
        if(userService.findByUserName(user.getUsername()) != null)
        {
            model.addAttribute("register","failed");
            user.setUsername("");
            user.setPassword("");
            return "user/register";
        }
        if(!user.getPassword().equals(confirm)){
            model.addAttribute("pass","failed");
            return "user/register";
        }
       userService.saveUser(user);
        return "redirect:/login";
    }
    @GetMapping ("/user/delete")
    public String userDelete(){
        return "user/delete";
    }
    @PostMapping("/user/delete")
    public String delete(@AuthenticationPrincipal CurrentUser customUser, HttpSession session) {
        User user = customUser.getUser();
        planRepository.deleteAllFromUser(user);
        trainingRepository.deleteAllFromUser(user);
        userRepository.deleteById(user.getId());
        session.invalidate();
        return "redirect:/";
    }
    @GetMapping ("/user/details")
    public String userDetails(){
        return "user/details";
    }
    @GetMapping("/user/edit")
    public String edit(@AuthenticationPrincipal CurrentUser customUser, Model model) {
        model.addAttribute("user",userRepository.findById(customUser.getUser().getId()).get());
        return "user/edit";
    }
    @PostMapping("/user/edit")
    public String editProcess(@Valid User user, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return "user/edit";
        }
        if(userService.findByUserName(user.getUsername()) != null)
        {
            model.addAttribute("register","failed");
            return "user/edit";
        }
        userRepository.save(user);
        return "redirect:/";
    }
    @GetMapping("/user/password")
    public String editPassword(@AuthenticationPrincipal CurrentUser customUser, Model model) {
        User user = userRepository.findById(customUser.getUser().getId()).get();
        user.setPassword(null);
        model.addAttribute("user",user);
        return "user/password";
    }
    @PostMapping("/user/password")
    public String passwordProcess(@RequestParam String confirm, @RequestParam String old, @Valid User user, BindingResult bindingResult, Model model, @AuthenticationPrincipal CurrentUser customUser) {
        if (bindingResult.hasErrors()) {
            return "/user/password";
        }
        if(!passwordEncoder.matches(old,userRepository.findById(customUser.getUser().getId()).get().getPassword())){
            model.addAttribute("old","failed");
            return "/user/password";
        }
        if(!user.getPassword().equals(confirm)){
            model.addAttribute("pass","failed");
            return "/user/password";
        }

        userService.saveUser(user);
        return "redirect:/";
    }
    @GetMapping("/users/all")
    public String allUsers(Model model){
        model.addAttribute("users" , userRepository.findAll());
        return "user/all";
    }
    @GetMapping ("/activate")
    public String activate(){
        return "user/activate";
    }
}


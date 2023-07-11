package pl.coderslab.springboot.plan;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.springboot.training.Training;

import javax.validation.Valid;

@Controller
public class PlanController {
    private final PlanRepository planRepository;

    public PlanController(PlanRepository planRepository) {
        this.planRepository = planRepository;
    }
    @RequestMapping("/plan/all")
    public String findAll(Model model) {
        model.addAttribute("plans", planRepository.findAll());
        return "plan/all";
    }
    @RequestMapping("/plan/delete/{id}")
    public String delete(@PathVariable Long id) {
        planRepository.deleteById(id);
        return "redirect:/plan/all";
    }
    @GetMapping("/plan/add")
    public String add(Model model) {
        model.addAttribute("plan", new Plan());
        return "plan/add";
    }

    @PostMapping("/plan/add")
    public String addProcess(@Valid Plan plan, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "plan/add";
        }
        planRepository.save(plan);
        return "redirect:/plan/all";
    }
    @GetMapping("/plan/edit/{id}")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("plan", planRepository.findById(id));
        return "plan/edit";
    }

    @PostMapping("/plan/edit/{id}")
    public String editProcess(@Valid Plan plan, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "plan/edit";
        }
        planRepository.save(plan);
        return "redirect:/plan/all";
    }
    @GetMapping("/plan/show/{id}")
    public String show(@PathVariable Long id, Model model) {
        model.addAttribute("plan", planRepository.findById(id).get());
        return "plan/show";
    }


}

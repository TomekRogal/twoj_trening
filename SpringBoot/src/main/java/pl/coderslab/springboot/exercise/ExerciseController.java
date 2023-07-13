package pl.coderslab.springboot.exercise;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;


@Controller
public class ExerciseController {
    private final ExerciseRepository exerciseRepository;

    public ExerciseController(ExerciseRepository exerciseRepository) {
        this.exerciseRepository = exerciseRepository;
    }
    @RequestMapping("/exercise/all")
    public String findAll(Model model) {
        model.addAttribute("exercises", exerciseRepository.findAll());
        return "exercise/all";
    }
    @RequestMapping("/exercise/delete/{id}")
    public String delete(@PathVariable Long id, Model model) {
        try {
            exerciseRepository.deleteById(id);
            return "redirect:/exercise/all";
        } catch (Exception e) {
            model.addAttribute("delete","failed");
        }
        return "forward:/exercise/all";
    }
    @GetMapping("/exercise/add")
    public String add(Model model) {
        model.addAttribute("exercise", new Exercise());
        return "exercise/add";
    }

    @PostMapping("/exercise/add")
    public String addProcess(@Valid Exercise exercise, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "exercise/add";
        }
        exerciseRepository.save(exercise);
        return "redirect:/exercise/all";
    }
    @GetMapping("/exercise/edit/{id}")
    public String edit(@PathVariable Long id, Model model) {
        if(exerciseRepository.findById(id).isPresent()){
            model.addAttribute("exercise", exerciseRepository.findById(id));
            return "exercise/edit";
        }
        return "redirect:/exercise/all";
    }

    @PostMapping("/exercise/edit/{id}")
    public String editProcess(@Valid Exercise exercise, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "exercise/edit";
        }
        exerciseRepository.save(exercise);
        return "redirect:/exercise/all";
    }
    @GetMapping("/exercise/show/{id}")
    public String show(@PathVariable Long id, Model model) {
        if(exerciseRepository.findById(id).isPresent()){
            model.addAttribute("exercise", exerciseRepository.findById(id).get());
            return "exercise/show";
        }
        return "redirect:/exercise/all";
    }
}


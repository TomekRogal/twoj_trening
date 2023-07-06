package pl.coderslab.springboot.training;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;


@Controller
public class TrainingController {
    private final TrainingRepository trainingRepository;

    public TrainingController(TrainingRepository exerciseRepository) {
        this.trainingRepository = exerciseRepository;
    }
    @RequestMapping("/training/all")
    public String findAll(Model model) {
        model.addAttribute("trainings", trainingRepository.findAll());
        return "training/all";
    }
    @RequestMapping("/training/delete/{id}")
    public String delete(@PathVariable Long id) {
        trainingRepository.deleteById(id);
        return "redirect:/training/all";
    }


    @GetMapping("/training/add")
    public String add(Model model){
        model.addAttribute("training", new Training());
        return "training/add";
    }
    @PostMapping ("/training/add")
    public String addProcess( @Valid Training exercise , BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "training/add";
        }
        trainingRepository.save(exercise);
        return "redirect:/training/all";
    }
    @GetMapping("/training/edit/{id}")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("training", trainingRepository.findById(id));
        return "training/edit";
    }
    @PostMapping("/training/edit/{id}")
    public String editProcess(@Valid Training exercise, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "training/edit";
        }
        trainingRepository.save(exercise);
        return "redirect:/training/all";
    }
    @GetMapping("/training/show/{id}")
    public String show(@PathVariable Long id, Model model) {
        model.addAttribute("training",trainingRepository.findById(id).get());
        return "training/show";
    }

}

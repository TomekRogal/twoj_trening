package pl.coderslab.springboot.training;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.springboot.trainingexercise.TrainingExerciseRepository;
import pl.coderslab.springboot.user.CurrentUser;


import javax.validation.Valid;


@Controller
public class TrainingController {
    private final TrainingRepository trainingRepository;
    private final TrainingExerciseRepository trainingExerciseRepository;


    public TrainingController(TrainingRepository exerciseRepository, TrainingExerciseRepository trainingExerciseRepository) {
        this.trainingRepository = exerciseRepository;

        this.trainingExerciseRepository = trainingExerciseRepository;
    }

    @RequestMapping("/training/all")
    public String findAll(@AuthenticationPrincipal CurrentUser customUser, Model model) {
        model.addAttribute("trainings", trainingRepository.findByUser(customUser.getUser()));
        return "training/all";
    }

    @RequestMapping("/training/delete/{id}")
    public String delete(@PathVariable Long id, Model model, @AuthenticationPrincipal CurrentUser customUser) {
        try {
            if(trainingRepository.findById(id).get().getUser().getId().equals(customUser.getUser().getId())) {
                trainingRepository.deleteById(id);
            }
            return "redirect:/training/all";
        } catch (Exception e) {
            model.addAttribute("delete", "failed");
        }
        return "forward:/training/all";
    }


    @GetMapping("/training/add")
    public String add(@AuthenticationPrincipal CurrentUser customUser, Model model) {
        Training training = new Training();
        training.setUser(customUser.getUser());
        model.addAttribute("training", training);
        return "training/add";
    }

    @PostMapping("/training/add")
    public String addProcess(@Valid Training training, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "training/add";
        }
        trainingRepository.save(training);
        return "redirect:/training/all";
    }

    @GetMapping("/training/edit/{id}")
    public String edit(@AuthenticationPrincipal CurrentUser customUser, @PathVariable Long id, Model model) {
        if(trainingRepository.findById(id).isPresent()){
            if(trainingRepository.findById(id).get().getUser().getId().equals(customUser.getUser().getId())) {
                model.addAttribute("training", trainingRepository.findById(id).get());
                return "training/edit";
            }
        }
        return "redirect:/training/all";
    }

    @PostMapping("/training/edit/{id}")
    public String editProcess(@Valid Training training, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "training/edit";
        }
        trainingRepository.save(training);
        return "redirect:/training/all";
    }

    @GetMapping("/training/show/{id}")
    public String show(@PathVariable Long id, Model model, @AuthenticationPrincipal CurrentUser customUser) {
        if(trainingRepository.findById(id).isPresent()){
            if(trainingRepository.findById(id).get().getUser().getId().equals(customUser.getUser().getId())) {
                model.addAttribute("training", trainingRepository.findById(id).get());
                model.addAttribute("exercises", trainingExerciseRepository.findAllExercisesFromTraining(trainingRepository.findById(id).get()));
                return "training/show";
            }
        }
        return "redirect:/training/all";
    }

}

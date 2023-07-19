package pl.coderslab.springboot.trainingexercise;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.springboot.exercise.Exercise;
import pl.coderslab.springboot.exercise.ExerciseRepository;
import pl.coderslab.springboot.training.TrainingRepository;
import pl.coderslab.springboot.user.CurrentUser;

import javax.validation.Valid;
import java.util.List;

@Controller
public class TrainingExerciseController {
    private final ExerciseRepository exerciseRepository;
    private final TrainingExerciseRepository trainingExerciseRepository;
    private final TrainingRepository trainingRepository;

    public TrainingExerciseController(ExerciseRepository exerciseRepository, TrainingExerciseRepository trainingExerciseRepository, TrainingRepository trainingRepository) {
        this.exerciseRepository = exerciseRepository;
        this.trainingExerciseRepository = trainingExerciseRepository;
        this.trainingRepository = trainingRepository;
    }
    @ModelAttribute("exercises")
    public List<Exercise> exercises() {
        return exerciseRepository.findAll();
    }
    @GetMapping("/training/exercise/add/{id}")
    public String add(@PathVariable Long id, Model model, @AuthenticationPrincipal CurrentUser customUser) {
        TrainingExercise trainingExercise = new TrainingExercise();
        if(trainingRepository.findById(id).isPresent()){
            if(trainingRepository.findById(id).get().getUser().getId().equals(customUser.getUser().getId())) {
                trainingExercise.setTraining(trainingRepository.findById(id).get());
                model.addAttribute("trainingExercise", trainingExercise);
                return "trainingexercise/add";
            }
        }
        return "redirect:/training/show/"+id;
    }

    @PostMapping("/training/exercise/add")
    public String addProcess(@Valid TrainingExercise trainingExercise, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "trainingexercise/add";
        }
        trainingExerciseRepository.save(trainingExercise);
        return "redirect:/training/show/" +trainingExercise.getTraining().getId();
    }
    @RequestMapping("/training/exercise/delete/{id}")
    public String delete(@PathVariable Long id, @AuthenticationPrincipal CurrentUser customUser) {
        if(trainingExerciseRepository.findById(id).isPresent()){
            if(trainingExerciseRepository.findById(id).get().getTraining().getUser().getId().equals(customUser.getUser().getId())) {
                TrainingExercise trainingExercise = trainingExerciseRepository.findById(id).get();
                trainingExerciseRepository.deleteById(id);
                return "redirect:/training/show/" + trainingExercise.getTraining().getId();
            }
        }
        return "redirect:/training/all";
    }
    @GetMapping("/training/exercise/edit/{id}")
    public String edit(@PathVariable Long id, Model model, @AuthenticationPrincipal CurrentUser customUser) {
        if(trainingExerciseRepository.findById(id).isPresent()){
            if(trainingExerciseRepository.findById(id).get().getTraining().getUser().getId().equals(customUser.getUser().getId())) {
                model.addAttribute("trainingExercise", trainingExerciseRepository.findById(id).get());
                return "trainingexercise/edit";
            }
        }
        return "redirect:/training/all";
    }

    @PostMapping("/training/exercise/edit")
    public String editProcess(@Valid TrainingExercise trainingExercise, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "trainingexercise/edit";
        }
        trainingExerciseRepository.save(trainingExercise);
        return "redirect:/training/show/" + trainingExercise.getTraining().getId();
    }
    @GetMapping("/training/exercise/addex/{id}")
    public String addex(@PathVariable Long id, Model model, @AuthenticationPrincipal CurrentUser customUser) {
        TrainingExercise trainingExercise = new TrainingExercise();
        if(exerciseRepository.findById(id).isPresent()){
                trainingExercise.setExercise(exerciseRepository.findById(id).get());
                model.addAttribute("trainings",trainingRepository.findByUser(customUser.getUser()));
                model.addAttribute("trainingExercise", trainingExercise);
                return "trainingexercise/addex";
        }
        return "redirect:/exercise/all";
    }
    @PostMapping("/training/exercise/addex")
    public String addexProcess(@Valid TrainingExercise trainingExercise, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "trainingexercise/addex";
        }
        trainingExerciseRepository.save(trainingExercise);
        return "redirect:/exercise/all";
    }
}

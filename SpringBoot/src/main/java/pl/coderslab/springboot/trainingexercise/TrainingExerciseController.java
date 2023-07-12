package pl.coderslab.springboot.trainingexercise;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.springboot.exercise.Exercise;
import pl.coderslab.springboot.exercise.ExerciseRepository;
import pl.coderslab.springboot.training.TrainingRepository;


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
    public String add(@PathVariable Long id, Model model) {
        TrainingExercise trainingExercise = new TrainingExercise();
        if(trainingRepository.findById(id).isPresent()){
            trainingExercise.setTraining(trainingRepository.findById(id).get());
            model.addAttribute("trainingExercise", trainingExercise);
            return "trainingexercise/add";
        }
        return "redirect:/training/all";
    }

    @PostMapping("/training/exercise/add")
    public String addProcess(@Valid TrainingExercise trainingExercise, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "trainingexercise/add";
        }
        trainingExerciseRepository.save(trainingExercise);
        return "redirect:/training/all";
    }
    @RequestMapping("/training/exercise/delete/{id}")
    public String delete(@PathVariable Long id) {
        if(trainingExerciseRepository.findById(id).isPresent()){
            TrainingExercise trainingExercise = trainingExerciseRepository.findById(id).get();
            trainingExerciseRepository.deleteById(id);
            return "redirect:/plan/show/"+trainingExercise.getTraining().getId();
        }
        return "redirect:/training/all";
    }
}

package pl.coderslab.springboot.plantraining;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.springboot.dayname.DayName;
import pl.coderslab.springboot.dayname.DayNameRepository;
import pl.coderslab.springboot.plan.Plan;
import pl.coderslab.springboot.plan.PlanRepository;
import pl.coderslab.springboot.training.Training;
import pl.coderslab.springboot.training.TrainingRepository;

import javax.validation.Valid;
import java.time.LocalDate;
import java.util.List;

@Controller
public class PlanTrainingController {
    private final PlanTrainingRepository planTrainingRepository;
    private final TrainingRepository trainingRepository;
    private final DayNameRepository dayNameRepository;
    private final PlanRepository planRepository;


    public PlanTrainingController(PlanTrainingRepository planTrainingRepository, TrainingRepository trainingRepository, DayNameRepository dayNameRepository, PlanRepository planRepository) {
        this.planTrainingRepository = planTrainingRepository;
        this.trainingRepository = trainingRepository;
        this.dayNameRepository = dayNameRepository;
        this.planRepository = planRepository;
    }
    @ModelAttribute("trainings")
    public List<Training> trainings() {
        return trainingRepository.findAll();
    }
    @ModelAttribute("days")
    public List<DayName> dayNames() {
        return dayNameRepository.findAll();
    }
    @ModelAttribute("plans")
    public List<Plan> plans() {
        return planRepository.findAll();
    }
    @GetMapping("/plan/training/add/{id}")
    public String add(@PathVariable Long id, Model model) {
        if(planRepository.findById(id).isPresent()){
            PlanTraining planTraining = new PlanTraining();
            planTraining.setPlan(planRepository.findById(id).get());
            model.addAttribute("planTraining", planTraining);
            return "plantraining/add";
        }
        return "redirect:/plan/all";
    }

    @PostMapping("/plan/training/add")
    public String addProcess(@Valid PlanTraining planTraining, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "plantraining/add";
        }
        planTrainingRepository.save(planTraining);
        return "redirect:/plan/all";
    }
    @RequestMapping("/plan/training/delete/{id}")
    public String delete(@PathVariable Long id) {
        if(planTrainingRepository.findById(id).isPresent()){
            PlanTraining planTraining = planTrainingRepository.findById(id).get();
            planTrainingRepository.deleteById(id);
            return "redirect:/plan/show/"+planTraining.getPlan().getId();
        }
        return "redirect:/plan/all";
    }
}

package pl.coderslab.springboot.plantraining;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.springboot.plan.Plan;


import java.util.List;


public interface PlanTrainingRepository extends JpaRepository<PlanTraining, Long> {
    @Query("SELECT DISTINCT pt FROM PlanTraining pt JOIN FETCH pt.training JOIN FETCH pt.dayName WHERE pt.plan = ?1")
    List<PlanTraining> findAllTrainingsFromPlan(Plan plan);
}

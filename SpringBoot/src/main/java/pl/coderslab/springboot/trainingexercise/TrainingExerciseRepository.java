package pl.coderslab.springboot.trainingexercise;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.springboot.training.Training;

import java.util.List;

public interface TrainingExerciseRepository extends JpaRepository<TrainingExercise, Long> {
    @Query("SELECT DISTINCT te FROM TrainingExercise te JOIN FETCH te.exercise WHERE te.training = ?1")
    List<TrainingExercise> findAllExercisesFromTraining(Training training);

    @Modifying
    @Transactional
    @Query("delete TrainingExercise te where te.training = ?1")
    int deleteAllFromTraining(Training training);
}

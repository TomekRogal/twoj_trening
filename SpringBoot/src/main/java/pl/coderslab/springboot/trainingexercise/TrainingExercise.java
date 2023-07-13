package pl.coderslab.springboot.trainingexercise;

import pl.coderslab.springboot.exercise.Exercise;
import pl.coderslab.springboot.training.Training;

import javax.persistence.*;
import javax.validation.constraints.Min;

@Entity
public class TrainingExercise {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    private Training training;
    @ManyToOne
    private Exercise exercise;
    @Min(value = 1, message = "Wartość musi być liczbą całkowitą większą od 0")
    private int sets;
    @Min(value = 1, message = "Wartość musi być liczbą całkowitą większą od 0")
    private int reps ;
    @Min(value = 1, message = "Wartość musi być liczbą większą od 0")
    private Double weight;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Training getTraining() {
        return training;
    }

    public void setTraining(Training training) {
        this.training = training;
    }

    public Exercise getExercise() {
        return exercise;
    }

    public void setExercise(Exercise exercise) {
        this.exercise = exercise;
    }

    public int getSets() {
        return sets;
    }

    public void setSets(int sets) {
        this.sets = sets;
    }

    public int getReps() {
        return reps;
    }

    public void setReps(int reps) {
        this.reps = reps;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }
}

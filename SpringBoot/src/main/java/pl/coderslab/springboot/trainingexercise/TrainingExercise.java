package pl.coderslab.springboot.trainingexercise;

import pl.coderslab.springboot.exercise.Exercise;
import pl.coderslab.springboot.training.Training;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
public class TrainingExercise {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotNull(message = "Pole nie może być puste")
    @ManyToOne
    private Training training;
    @NotNull(message = "Pole nie może być puste")
    @ManyToOne
    private Exercise exercise;
    @Min(value = 1, message = "Wartość musi być liczbą całkowitą większą od 0")
    private int sets;
    @Min(value = 1, message = "Wartość musi być liczbą całkowitą większą od 0")
    private int reps;
    @Min(value = 0, message = "Wartość musi być liczbą większą lub równą 0")
    @Max(value = 999, message = "Wartość musi być liczbą mniejszą lub równą 999")
    @Column(precision = 5, scale = 2)
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

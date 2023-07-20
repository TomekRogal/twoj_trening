package pl.coderslab.springboot.plantraining;

import pl.coderslab.springboot.dayname.DayName;
import pl.coderslab.springboot.plan.Plan;
import pl.coderslab.springboot.training.Training;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;


@Entity
public class PlanTraining {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotNull
    @ManyToOne
    private Plan plan;
    @NotNull
    @ManyToOne
    private Training training;
    @NotNull
    @ManyToOne
    private DayName dayName;
    @Min(value = 1, message = "Wartość musi być liczbą całkowitą większą od 0")
    @NotNull (message = "Pole nie może być puste")
    private int week;

    public int getWeek() {
        return week;
    }

    public void setWeek(int week) {
        this.week = week;
    }

    public DayName getDayName() {
        return dayName;
    }

    public void setDayName(DayName dayName) {
        this.dayName = dayName;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Plan getPlan() {
        return plan;
    }

    public void setPlan(Plan plan) {
        this.plan = plan;
    }

    public Training getTraining() {
        return training;
    }

    public void setTraining(Training training) {
        this.training = training;
    }

}

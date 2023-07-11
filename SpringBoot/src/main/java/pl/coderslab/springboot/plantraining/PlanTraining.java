package pl.coderslab.springboot.plantraining;

import pl.coderslab.springboot.dayname.DayName;
import pl.coderslab.springboot.plan.Plan;
import pl.coderslab.springboot.training.Training;

import javax.persistence.*;

@Entity
public class PlanTraining {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    private Plan plan;
    @ManyToOne
    private Training training;
    @ManyToOne
    private DayName dayName;
    private int displayOrder;

    public int getDisplayOrder() {
        return displayOrder;
    }

    public void setDisplayOrder(int displayOrder) {
        this.displayOrder = displayOrder;
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

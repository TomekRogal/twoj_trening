package pl.coderslab.springboot.training;

import pl.coderslab.springboot.exercise.Exercise;

import javax.persistence.*;
import java.time.LocalDate;


@Entity
public class Training {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}

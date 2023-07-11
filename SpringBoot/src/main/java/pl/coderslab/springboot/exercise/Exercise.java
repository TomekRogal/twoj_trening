package pl.coderslab.springboot.exercise;

import pl.coderslab.springboot.sets.Sets;

import javax.persistence.*;
import java.util.List;

@Entity
public class Exercise {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    @OneToMany
    private List<Sets> sets;

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

    public void setSets(List<Sets> sets) {
        this.sets = sets;
    }

    public List<Sets> getSets() {
        return sets;
    }

}

package pl.coderslab.springboot.plan;

import org.springframework.format.annotation.DateTimeFormat;
import pl.coderslab.springboot.user.User;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.time.LocalDate;


@Entity
public class Plan {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank(message = "Pole nie może być puste")
    @Size(max = 60, message = "Zbyt długa nazwa planu - masymalnie 60 znaków")
    @Column(nullable = false, length = 60)
    private String name;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate startDate;
    @Min(value = 1, message = "Długość planu musi być liczbą całkowitą większą od 0")
    @NotNull(message = "Pole nie może być puste")
    private int weeks;
    @ManyToOne
    @NotNull
    private User user;

    public int getWeeks() {
        return weeks;
    }


    public void setWeeks(int weeks) {
        this.weeks = weeks;
    }


    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }


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

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

}

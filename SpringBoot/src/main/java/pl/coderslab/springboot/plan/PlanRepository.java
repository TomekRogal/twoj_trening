package pl.coderslab.springboot.plan;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.springboot.user.User;

import java.util.List;


public interface PlanRepository extends JpaRepository<Plan, Long> {
    List<Plan> findByUser(User user);
}

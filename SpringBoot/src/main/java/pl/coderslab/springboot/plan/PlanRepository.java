package pl.coderslab.springboot.plan;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.springboot.user.User;

import java.util.List;


public interface PlanRepository extends JpaRepository<Plan, Long> {
    List<Plan> findByUser(User user);
    @Modifying
    @Transactional
    @Query("delete Plan p where p.user = ?1")
    int deleteAllFromUser(User user);
}


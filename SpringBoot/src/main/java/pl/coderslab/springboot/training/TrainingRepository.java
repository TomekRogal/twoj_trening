package pl.coderslab.springboot.training;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.springboot.user.User;

import java.util.List;


public interface TrainingRepository extends JpaRepository<Training, Long> {
List<Training> findByUser(User user);
}

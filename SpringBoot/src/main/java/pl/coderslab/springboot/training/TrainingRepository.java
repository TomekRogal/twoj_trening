package pl.coderslab.springboot.training;

import org.springframework.data.jpa.repository.JpaRepository;


public interface TrainingRepository extends JpaRepository<Training, Long> {

}

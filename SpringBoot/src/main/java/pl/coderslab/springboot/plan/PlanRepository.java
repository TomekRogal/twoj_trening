package pl.coderslab.springboot.plan;

import org.springframework.data.jpa.repository.JpaRepository;



public interface PlanRepository extends JpaRepository<Plan, Long> {
}

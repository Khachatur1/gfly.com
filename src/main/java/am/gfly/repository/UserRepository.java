package am.gfly.repository;

import am.gfly.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer> {

    User findOneByEmail(String email);
}

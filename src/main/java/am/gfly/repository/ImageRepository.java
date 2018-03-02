package am.gfly.repository;

import am.gfly.model.Image;
import am.gfly.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Integer> {
}

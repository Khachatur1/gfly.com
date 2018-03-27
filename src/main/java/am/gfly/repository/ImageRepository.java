package am.gfly.repository;

import am.gfly.model.Image;
import am.gfly.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ImageRepository extends JpaRepository<Image, Integer> {


   // List<Image> findImagesById(int id);
}

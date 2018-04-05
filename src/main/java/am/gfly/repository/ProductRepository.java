package am.gfly.repository;

import am.gfly.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Integer> {

    List<Product> getProductsByCategoryId(int id);
}

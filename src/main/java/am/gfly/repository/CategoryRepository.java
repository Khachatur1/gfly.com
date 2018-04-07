package am.gfly.repository;

import am.gfly.model.Category;
import am.gfly.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Integer> {

    Category getCategoryByName(String name);
}

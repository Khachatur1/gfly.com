package am.gfly.repository;

import am.gfly.model.Post;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PostRepository extends JpaRepository<Post, Integer> {
    Post getPostByTitle(String title);
    List<Post> getPostsByTitle(String title);
}

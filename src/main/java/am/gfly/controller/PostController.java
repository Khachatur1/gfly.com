package am.gfly.controller;


import am.gfly.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class PostController {

    @Autowired
    private PostRepository postRepository;

    @GetMapping("/post/{title}")
    public String getPostByName(@PathVariable("title") String title, ModelMap modelMap) {
        modelMap.addAttribute("post", postRepository.getPostByTitle(title));
        return "post";
    }

}

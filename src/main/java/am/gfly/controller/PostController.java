package am.gfly.controller;


import am.gfly.model.Post;
import am.gfly.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller

public class PostController {

    @Autowired
    private PostRepository postRepository;

    @RequestMapping(value = "/blog", method = RequestMethod.GET)
    public String postPage(ModelMap modelMap) {
        modelMap.addAttribute("posts", postRepository.findAll());
        return "blog";
    }

    @RequestMapping(value = "/blog/post", method = RequestMethod.GET)
    public String getPostByName(@RequestParam("title") String title, ModelMap modelMap) {
        modelMap.addAttribute("post", postRepository.getPostByTitle(title));
        return "post";
    }

    @RequestMapping(value = "/blog/posts", method = RequestMethod.GET)
    public String searchPost(@RequestParam("title") String title, ModelMap map) {
        List<Post> posts = postRepository.getPostsByTitle(title);
        map.addAttribute("posts", posts);
        return "blog";
    }

}

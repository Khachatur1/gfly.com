package am.gfly.controller;


import am.gfly.model.Category;
import am.gfly.model.Post;
import am.gfly.model.Product;
import am.gfly.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller

public class PostController {

    private List<Post> post;

    @Autowired
    private PostRepository postRepository;

    @RequestMapping(value = "/blog/post", method = RequestMethod.GET)
    public String getPostByName(@RequestParam("title") String title, ModelMap modelMap) {
        modelMap.addAttribute("post", postRepository.getPostByTitle(title));
        return "post";
    }

    @RequestMapping(value = "/blog/posts", method = RequestMethod.GET)
    public String searchPost(@RequestParam("title") String title, ModelMap map) {
        Set<Post> posts = new HashSet<>();
        for (Post post : postRepository.findAll()) {
            if (post.getTitle().toLowerCase().contains(title.toLowerCase())){
                posts.add(post);
            }
            if (post.getDescription().toLowerCase().contains(title.toLowerCase())){
                posts.add(post);
            }
        }
        map.addAttribute("posts", posts);
        return "blog";
    }

    @GetMapping("/blog")
    public String getProductByCategoryId(@RequestParam(required = false) Integer page, ModelMap map) {
        post = postRepository.findAll();
        PagedListHolder<Post> pagedListHolder = new PagedListHolder<>(post);
        pagedListHolder.setPageSize(2);
        map.addAttribute("maxPages", pagedListHolder.getPageCount());
        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) page = 1;
        map.addAttribute("page", page);
        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(0);
            map.addAttribute("posts", pagedListHolder.getPageList());
        } else if (page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page - 1);
            map.addAttribute("posts", pagedListHolder.getPageList());
        }
        return "blog";
    }

}

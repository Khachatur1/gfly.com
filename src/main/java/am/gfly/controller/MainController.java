package am.gfly.controller;

import am.gfly.model.Category;
import am.gfly.model.Product;
import am.gfly.repository.CategoryRepository;
import am.gfly.repository.ImageRepository;
import am.gfly.repository.PostRepository;
import am.gfly.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
public class MainController {

    @Autowired
    private PostRepository postRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private ImageRepository imageRepository;


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String mainPage() {
        return "redirect:/home";
    }

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String homePage(ModelMap map) {
        List<Product> allproducts = productRepository.findAll();
        map.addAttribute("categories", categoryRepository.findAll());
        map.addAttribute("products", allproducts.subList(allproducts.size() - 4, allproducts.size()));
        map.addAttribute("oneProduct", productRepository.findOne(allproducts.get(allproducts.size() - 1).getId()));
        return "index";
    }

    @RequestMapping(value = "/post", method = RequestMethod.GET)
    public String blogPage() {
        return "post";
    }

    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public String cartPage() {
        return "cart";
    }

    @GetMapping("/models")
    public String modelsPage() {
        return "redirect:/all/models";
    }

    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String contactPage() {
        return "contact";
    }


    @RequestMapping(value = "/blog", method = RequestMethod.GET)
    public String postPage(ModelMap modelMap) {
        modelMap.addAttribute("posts", postRepository.findAll());
        return "blog";
    }

    @RequestMapping(value = "/text", method = RequestMethod.GET)
    public String textPage() {
        return "text";
    }

    @RequestMapping(value = "/undefined", method = RequestMethod.GET)
    public String undefinedPage() {
        return "undefined";
    }


    @GetMapping("/model/{id}")
    public String getProduct(@PathVariable("id") int id, ModelMap modelMap, HttpServletRequest request) {
        modelMap.addAttribute("product", productRepository.findOne(id));
        modelMap.addAttribute("images", imageRepository.getImagesByProductId(id));
        return "product";
    }


    @GetMapping("/{name}/models")
    public String getProductByCategoryId(@PathVariable("name") String name, ModelMap modelMap) {
        Category category = categoryRepository.getCategoryByName(name);
        if (category.getName().equals("ALL")) {
            modelMap.addAttribute("allProducts", productRepository.findAll());
        } else {
            modelMap.addAttribute("allProducts", productRepository.getProductsByCategoryId(category.getId()));

        }
        modelMap.addAttribute("selectCategory", category);
        List<Category> allCategories = categoryRepository.findAll();
        allCategories.remove(category);
        modelMap.addAttribute("categories", allCategories);
        return "models";
    }

}

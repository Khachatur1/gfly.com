package am.gfly.controller;

import am.gfly.model.Category;
import am.gfly.model.Product;
import am.gfly.model.User;
import am.gfly.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


@Controller
public class MainController {

    List<Product> products;

    @Autowired
    private PostRepository postRepository;

    @Autowired
    private UserRepository userRepository;

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
        map.addAttribute("products4", allproducts.subList(allproducts.size() - 4, allproducts.size()));
        map.addAttribute("products8", allproducts.subList(allproducts.size() - 8, allproducts.size() - 4));
        map.addAttribute("oneProduct1", productRepository.findOne(allproducts.get(allproducts.size() - 1).getId()));
        map.addAttribute("oneProduct2", productRepository.findOne(allproducts.get(allproducts.size() - 2).getId()));

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
    public String getProductByCategoryId(@RequestParam(required = false) Integer page, @PathVariable("name") String name, ModelMap map) {
        Category category = categoryRepository.getCategoryByName(name);
        if (category.getName().equals("ALL")) {
            products = productRepository.findAll();
        } else {
           products = productRepository.getProductsByCategoryId(category.getId());
        }
        getPageList(page,map);
        map.addAttribute("selectCategory", category);
        List<Category> allCategories = categoryRepository.findAll();
        allCategories.remove(category);
        map.addAttribute("categories", allCategories);
        return "models";
    }

    private ModelMap getPageList(Integer page,ModelMap map) {
        PagedListHolder<Product> pagedListHolder = new PagedListHolder<>(products);
        pagedListHolder.setPageSize(8);
        map.addAttribute("maxPages", pagedListHolder.getPageCount());

        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) page = 1;

        map.addAttribute("page", page);
        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(0);
            map.addAttribute("allProducts", pagedListHolder.getPageList());
        } else if (page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page - 1);
            map.addAttribute("allProducts", pagedListHolder.getPageList());
        }
        return map;
    }


@GetMapping("/cart/result/{name}")
    public String search() {



      return "cart";
}



}

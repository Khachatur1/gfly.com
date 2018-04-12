package am.gfly.controller;

import am.gfly.model.*;
import am.gfly.repository.*;
import am.gfly.security.CurrentUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;


@Controller
public class MainController {

    private List<Product> products;

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
        map.addAttribute("product1", productRepository.findOne(allproducts.get(allproducts.size() - 1).getId()));
        map.addAttribute("products2", allproducts.subList(allproducts.size() - 5, allproducts.size() - 1));
        map.addAttribute("product3", productRepository.findOne(allproducts.get(allproducts.size() - 6).getId()));
        map.addAttribute("products4", allproducts.subList(allproducts.size() - 10, allproducts.size() - 6));
        map.addAttribute("product5", productRepository.findOne(allproducts.get(allproducts.size() - 11).getId()));
        return "index";
    }

    @GetMapping("/models")
    public String modelsPage() {
        return "redirect:/all/models";
    }

    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String contactPage() {
        return "contact";
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
        getPageList(page, map);
        map.addAttribute("selectCategory", category);
        List<Category> allCategories = categoryRepository.findAll();
        allCategories.remove(category);
        map.addAttribute("categories", allCategories);
        return "models";
    }

    private ModelMap getPageList(Integer page, ModelMap map) {
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


    @RequestMapping(value = "/models/search", method = RequestMethod.GET)
    public String searchProduct(@RequestParam("name") String name, ModelMap map) {
        List<Product> products = productRepository.getProductsByName(name);
        map.addAttribute("searchProducts", products);
        return "search";
    }

    @RequestMapping(value = "/models/new", method = RequestMethod.GET)
    public String newModels(ModelMap map) {
        List<Product> products = productRepository.findAll();
        map.addAttribute("searchProducts", products.subList(products.size() - 12, products.size()));
        return "search";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "admin/login";
    }

    @RequestMapping(value = "/loginSuccess", method = RequestMethod.GET)
    public String loginSuccess() {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal.getUser().getType() == UserType.USER) {
            return "redirect:/login";
        }
        return "redirect:/admin/home";
    }
}

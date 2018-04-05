package am.gfly.controller;

import am.gfly.model.Product;
import am.gfly.repository.CategoryRepository;
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
    private CategoryRepository categoryRepository;

    @Autowired
    private ProductRepository productRepository;


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String mainPage() {
        return "redirect:/home";
    }

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String homePage(ModelMap map) {
        List<Product> allproducts = productRepository.findAll();
        map.addAttribute("categories", categoryRepository.findAll());
        map.addAttribute("products", allproducts.subList(allproducts.size() - 4, allproducts.size()));

        Product one = productRepository.findOne(allproducts.get(allproducts.size()-1).getId());
        map.addAttribute("oneProduct", one);
        System.out.println(one);
        return "index";
    }

    @RequestMapping(value = "/blog", method = RequestMethod.GET)
    public String blogPage() {
        return "blog";
    }

    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public String cartPage() {
        return "cart";
    }

    @RequestMapping(value = "/category", method = RequestMethod.GET)
    public String categoryPage(ModelMap map) {
        map.addAttribute("categories", categoryRepository.findAll());
        map.addAttribute("products", productRepository.findAll());
        return "category";
    }

    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String contactPage() {
        return "contact";
    }


    @RequestMapping(value = "/post", method = RequestMethod.GET)
    public String postPage() {
        return "post";
    }

    @RequestMapping(value = "/text", method = RequestMethod.GET)
    public String textPage() {
        return "text";
    }

    @RequestMapping(value = "/undefined", method = RequestMethod.GET)
    public String undefinedPage() {
        return "undefined";
    }


    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String getProduct(@PathVariable("id") int productId, ModelMap modelMap, HttpServletRequest request) {
        Product one = productRepository.findOne(productId);
        if (one == null) {
            return "redirect:/home";
        }
        modelMap.addAttribute("product", one);
        return "product";
    }


//    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
//    public String getProductByCategoryId(@PathVariable("id") int categoryId, ModelMap modelMap) {
//        List<Product> productsByCategoryId = productRepository.getProductsByCategoryId(categoryId);
//        modelMap.addAttribute("productsByCategoryId", productsByCategoryId);
//        modelMap.addAttribute("categories", categoryRepository.findAll());
//        for (Product product : productsByCategoryId) {
//            System.out.println(product);
//        }
//        return "category";
//    }
}

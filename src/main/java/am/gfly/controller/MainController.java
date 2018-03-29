package am.gfly.controller;

import am.gfly.model.Product;
import am.gfly.repository.CategoryRepository;
import am.gfly.repository.ImageRepository;
import am.gfly.repository.ProductRepository;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;


@Controller
public class MainController {

    @Value("${gfly.category.upload.path}")
    private String categoryImageUploadPath;

    @Value("${gfly.product.upload.path}")
    private String productImageUploadPath;

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
        map.addAttribute("categories", categoryRepository.findAll());
        map.addAttribute("products", productRepository.findAll());
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


    @RequestMapping(value = "/category/image", method = RequestMethod.GET)
    public void getCategoryImageAsByteArray(HttpServletResponse response,
                                    @RequestParam("fileName") String fileName) {
        try {
            InputStream in = new FileInputStream(categoryImageUploadPath + fileName);
            response.setContentType(MediaType.IMAGE_JPEG_VALUE);
            IOUtils.copy(in, response.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

 @RequestMapping(value = "/product/image", method = RequestMethod.GET)
    public void getProductImageAsByteArray(HttpServletResponse response,
                                    @RequestParam("fileName") String fileName) {
        try {
            InputStream in = new FileInputStream(productImageUploadPath + fileName);
            response.setContentType(MediaType.IMAGE_JPEG_VALUE);
            IOUtils.copy(in, response.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String getProduct(@PathVariable("id") int productId, ModelMap modelMap, HttpServletRequest request) {
        Product one = productRepository.findOne(productId);
        if (one ==null){
            return "redirect:/home";
        }
        modelMap.addAttribute("product", one);
        return "product";
    }

}

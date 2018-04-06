package am.gfly.controller;

import am.gfly.model.Category;
import am.gfly.model.Image;
import am.gfly.model.Product;
import am.gfly.model.Video;
import am.gfly.repository.CategoryRepository;
import am.gfly.repository.ImageRepository;
import am.gfly.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Controller
public class AdminController {

    @Value("${gfly.category.image.upload.path}")
    private String categoryImageUploadPath;

    @Value("${gfly.product.image.upload.path}")
    private String productImageUploadPath;

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private ImageRepository imageRepository;


@RequestMapping(value = "/buttons", method = RequestMethod.GET)
    public String buttonsPage() {
        return "admin/buttons";
    }

@RequestMapping(value = "/calendar", method = RequestMethod.GET)
    public String calendarPage() {
        return "admin/calendar";
    }

@RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage() {
        return "admin/admin";
    }

@RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage() {
        return "admin/login";
    }

@RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String signupPage() {
        return "admin/signup";
    }

@RequestMapping(value = "/tables", method = RequestMethod.GET)
    public String tablesPage() {
        return "admin/tables";
    }


    @RequestMapping(value = "/saveCategory", method = RequestMethod.POST)
    public String addBrand(@ModelAttribute(name = "category") Category category,
                           @RequestParam(value = "image") MultipartFile file) {
        File dir = new File(categoryImageUploadPath);
        if (!dir.exists()) {
            dir.mkdir();
        }
        String picName = file.getOriginalFilename();
        File picture = new File(categoryImageUploadPath + picName);
        try {
            file.transferTo(picture);
        } catch (IOException e) {
            return "redirect:/forms";
        }
        category.setPicUrl(picName);
        categoryRepository.save(category);
        return "redirect:/forms";
    }


    @RequestMapping(value = "/forms", method = RequestMethod.GET)
    public String addPruductPage(ModelMap map) {
        map.addAttribute("product", new Product());
        map.addAttribute("image", new Image());
        map.addAttribute("category", new Category());
        map.addAttribute("allCategories", categoryRepository.findAll());
        return "admin/forms";
    }

    @RequestMapping(value = "/saveProduct", method = RequestMethod.POST)
    public String saveProductPage(@ModelAttribute(name = "product") Product product,
                                  @RequestParam(value = "image") MultipartFile file) {
        String picName = file.getOriginalFilename();
        File picture = new File(productImageUploadPath + picName);
        try {
            file.transferTo(picture);
        } catch (IOException e) {
            System.out.println(productImageUploadPath + picture.getName());
            return "redirect:/addProduct";
        }
        product.setPicUrl(picName);
        productRepository.save(product);
//        Image image = new Image();
//        image.setName(picName);
//        image.setProduct(product);
//        imageRepository.save(image);
        return "redirect:/forms";
    }


}

package am.gfly.controller;

import am.gfly.model.*;
import am.gfly.repository.*;
import am.gfly.security.CurrentUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.context.SecurityContextHolder;
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

    @Value("${gfly.post.image.upload.path}")
    private String postImageUploadPath;

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private ImageRepository imageRepository;

    @Autowired
    private PostRepository postRepository;

    @Autowired
    private UserRepository userRepository;



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
    @RequestMapping(value = "/loginSuccess", method = RequestMethod.POST)
    public String loginSuccess() {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal.getUser().getType() == UserType.ADMIN) {
            return "redirect:/admin";
        }
        return "redirect:/login";
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
    public String forms(ModelMap map) {
        map.addAttribute("post", new Post());
        map.addAttribute("users", userRepository.findAll());
        map.addAttribute("product", new Product());
        map.addAttribute("image", new Image());
        map.addAttribute("category", new Category());
        map.addAttribute("allCategories", categoryRepository.findAll());
        map.addAttribute("allProducts", productRepository.findAll());
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
            return "redirect:/forms";
        }
        product.setPicUrl(picName);
        productRepository.save(product);
        Image image = new Image();
        image.setPicIrl(picName);
        image.setProduct(product);
        imageRepository.save(image);
        return "redirect:/forms";
    }

    @RequestMapping(value = "/saveImage", method = RequestMethod.POST)
    public String saveImage(@ModelAttribute(name = "image") Image image, @RequestParam(value = "image") MultipartFile file) {
        String picName = file.getOriginalFilename();
        File picture = new File(productImageUploadPath + picName);
        try {
            file.transferTo(picture);
        } catch (IOException e) {
            return "redirect:/forms";
        }
        image.setPicIrl(picName);
        imageRepository.save(image);
        return "redirect:/forms";
    }

    @RequestMapping(value = "/savePost", method = RequestMethod.POST)
    public String savePost(@ModelAttribute(name = "post") Post post,
                           @RequestParam(value = "image") MultipartFile file) {
        String picName = file.getOriginalFilename();
        File picture = new File(postImageUploadPath + picName);
        try {
            file.transferTo(picture);
        } catch (IOException e) {
            return "redirect:/forms";
        }
        post.setPicUrl(picName);
        postRepository.save(post);
        return "redirect:/forms";
    }
}

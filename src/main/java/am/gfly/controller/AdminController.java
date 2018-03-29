package am.gfly.controller;

import am.gfly.model.Category;
import am.gfly.model.Image;
import am.gfly.model.Product;
import am.gfly.model.Video;
import am.gfly.repository.CategoryRepository;
import am.gfly.repository.ImageRepository;
import am.gfly.repository.ProductRepository;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

@Controller
public class AdminController {


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


    @RequestMapping(value = "/addCategory", method = RequestMethod.GET)
    public String addCategoryPage(ModelMap map) {
        map.addAttribute("category", new Category());
        return "addCategory";
    }

    @RequestMapping(value = "/saveCategory", method = RequestMethod.POST)
    public String addBrand(@ModelAttribute(name = "category") Category category,
                           @RequestParam(value = "image") MultipartFile file) {
        File dir = new File(categoryImageUploadPath);
        if (!dir.exists()) {
            dir.mkdir();
        }
        String picName = file.getOriginalFilename();
        File picture = new File(categoryImageUploadPath + "/" + picName);
        try {
            file.transferTo(picture);
        } catch (IOException e) {
            return "redirect:/addCategory";
        }
        category.setPicUrl(picName);
        categoryRepository.save(category);
        return "redirect:/addCategory";
    }


    @RequestMapping(value = "/addProduct", method = RequestMethod.GET)
    public String addPruductPage(ModelMap map) {
        map.addAttribute("product", new Product());
        map.addAttribute("images", new Image());
        map.addAttribute("category", categoryRepository.findAll());
        map.addAttribute("video", new Video());
        return "addProduct";
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
        return "redirect:/addProduct";
    }


}

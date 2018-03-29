package am.gfly.controller;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

@Controller
public class ImageController {

    @Value("${gfly.category.upload.path}")
    private String categoryImageUploadPath;

    @Value("${gfly.product.upload.path}")
    private String productImageUploadPath;


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

}

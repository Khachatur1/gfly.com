package am.gfly.controller;

import am.gfly.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
@Autowired
private CategoryRepository categoryRepository;
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String mainPage() {
        return "redirect:/home";
    }

@RequestMapping(value = "/home", method = RequestMethod.GET)
    public String homePage(ModelMap map) {
    map.addAttribute("categories", categoryRepository.findAll());
        return "index";
}



@RequestMapping(value = "/category", method = RequestMethod.GET)
    public String categoryPage(ModelMap map) {
        map.addAttribute("categories", categoryRepository.findAll());
        return "category";
}





}

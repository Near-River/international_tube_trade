package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping({"/home"})
    public String home() {
        return "index";
    }

    @RequestMapping({"/about_us"})
    public String about_us() {
        return "about_us";
    }


    @RequestMapping({"/products"})
    public String products() {
        return "products";
    }

    @RequestMapping({"/news_center"})
    public String news_center() {
        return "news_center";
    }

    @RequestMapping({"/qualification"})
    public String qualification() {
        return "qualification";
    }

    @RequestMapping({"/equipment"})
    public String equipment() {
        return "equipment";
    }

    @RequestMapping({"/contact_us"})
    public String contact_us() {
        return "contact_us";
    }

}

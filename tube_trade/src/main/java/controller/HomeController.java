package controller;

import dao.NewsDao;
import model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import util.PageBean;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HomeController {

    @Autowired
    private NewsDao newsService;

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
    public String news_center(HttpServletRequest request) {
        Integer pageSize = 10;
        String pageNo = request.getParameter("pageNo");
        Integer pageNum = (pageNo == null) ? 1 : Integer.parseInt(pageNo);
        PageBean<News> pageBean = newsService.findByPage(pageNum, pageSize);
        request.setAttribute("pageBean", pageBean);

        return "news_center";
    }

    @RequestMapping({"/news/show/{news_id}"})
    public String news_show(HttpServletRequest request, @PathVariable("news_id") String news_id) {
        News news = newsService.findById(news_id);
        request.setAttribute("news", news);
        return "news_show";
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

package controller;

import dao.NewsDao;
import model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import util.PageBean;
import util.UUIDUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
public class NewsController {

    @Autowired
    private NewsDao newsService;

    @RequestMapping({"/manage/news/add"})
    public String manage_news_add(HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.getAttribute("globalUser") == null) {
            return "manage/login";
        }
        return "manage/news-deploy";
    }

    @RequestMapping({"/manage/news/{pageNo}"})
    public String manage_news(HttpServletRequest request, @PathVariable("pageNo") String pageNo) {
        HttpSession session = request.getSession();
        if (session.getAttribute("globalUser") == null) {
            return "manage/login";
        }
        Integer pageSize = 10;
        Integer pageNum = (pageNo == null) ? 1 : Integer.parseInt(pageNo);
        PageBean<News> pageBean = newsService.findByPage(pageNum, pageSize);
        request.setAttribute("pageBean", pageBean);
        return "manage/news-manage";
    }

    @RequestMapping({"/manage/news/search/{pageNo}"})
    public String manage_news_search(HttpServletRequest request, @PathVariable("pageNo") String pageNo) {
        HttpSession session = request.getSession();
        if (session.getAttribute("globalUser") == null) {
            return "manage/login";
        }
        Integer pageSize = 10;
        Integer pageNum = (pageNo == null) ? 1 : Integer.parseInt(pageNo);
        PageBean<News> pageBean = newsService.findByPage(pageNum, pageSize);
        request.setAttribute("pageBean", pageBean);
        return "manage/news-search";
    }

    @RequestMapping({"/manage/news/edit/{news_id}"})
    public String manage_news_edit(HttpServletRequest request, @PathVariable("news_id") String news_id) {
        HttpSession session = request.getSession();
        if (session.getAttribute("globalUser") == null) {
            return "manage/login";
        }
        if (news_id == null) {
            return "manage/news-manage";
        }
        News news = newsService.findById(news_id);
        request.setAttribute("news", news);
        return "manage/news-edit";
    }

    @RequestMapping({"/manage/news/delete/{news_id}"})
    public String manage_news_delete(HttpServletRequest request, @PathVariable("news_id") String news_id) {
        HttpSession session = request.getSession();
        if (session.getAttribute("globalUser") == null) {
            return "manage/login";
        }
        if (news_id != null) {
            newsService.delete(news_id);
        }
        return "manage/news-manage";
    }

    @RequestMapping({"/manage/news/save"})
    public String manage_news_save(HttpServletRequest request, News news) {
        HttpSession session = request.getSession();
        if (session.getAttribute("globalUser") == null) {
            return "manage/login";
        }
        if (news.getTitle().equals("") || news.getContent().equals("")) {
            return "manage/news-deploy";
        }
        if (news.getUuid() == null) {
            news.setUuid(UUIDUtils.getUUID());
            news.setCreatedDate(new Date());
            newsService.save(news);
        } else {
            News old_news = newsService.findById(news.getUuid());
            old_news.setTitle(news.getTitle());
            old_news.setContent(news.getContent());
            old_news.setLastModifiedDate(new Date());
            newsService.update(old_news);
        }
        return "common/close";
    }
}

package controller;

import dao.UserDao;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class ManageController {

    @Autowired
    private UserDao userService;

    @RequestMapping({"/manage"})
    public String manage_home(HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.getAttribute("globalUser") == null) {
            return "manage/login";
        }
        return "manage/manage-home";
    }

    @RequestMapping({"/manage/news/add"})
    public String manage_news_add(HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.getAttribute("globalUser") == null) {
            return "manage/login";
        }
        return "manage/news-deploy";
    }

    @RequestMapping(value = "/manage/login")
    public String login(HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.getAttribute("globalUser") == null) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            // 验证用户和密码是否为空
            if (username == null || password == null || "".equals(username) || "".equals(password)) {
                request.setAttribute("loginFailure", "用户名或密码不能为空。");
                return "manage/login";
            }
            // 验证用户名和密码是否正确
            User user = userService.checkUser(username, password);
            if (user == null) {
                request.setAttribute("loginFailure", "用户名或密码不正确。");
                return "manage/login";
            }
            session.setAttribute("globalUser", user);
        }
        return "redirect:/manage";
    }

    @RequestMapping(value = "/manage/logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:/manage";
    }
}

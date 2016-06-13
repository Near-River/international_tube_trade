package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author near on 2016/3/24.
 */
@Controller
public class ManageController {

//    @RequestMapping(value = "/login")
//    public String login(HttpServletRequest request, HttpServletResponse response) {
//        HttpSession session = request.getSession();
//        if (session.getAttribute("globalUser") == null) {
//            String email = request.getParameter("email");
//            String password = request.getParameter("password");
//            // 验证用户邮箱和密码是否为空
//            if (email == null || password == null || "".equals(email) || "".equals(password)) {
//                request.setAttribute("loginFailure", "用户名或密码不能为空。");
//                return "application/user/login";
//            }
//            // 验证用户名和密码是否正确
//            User user = userService.checkUser(email, DigestUtils.md5DigestAsHex(password.getBytes()));
//            if (user == null) {
//                request.setAttribute("loginFailure", "用户名或密码不正确。");
//                return "application/user/login";
//            }
//
//            // 记住我：用户信息的 Cookie 处理
//            LoginUtils.rememberMe(request, response, email, password);
//
//            session.setAttribute("globalUser", user);
//
//        }
//
//        return "redirect:home";
//    }
//
//    @RequestMapping(value = "/logout")
//    public String logout(HttpServletRequest request) {
//        HttpSession session = request.getSession();
//        session.invalidate();
//        return "redirect:/home";
//    }

}

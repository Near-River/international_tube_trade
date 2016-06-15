package controller;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/user")
public class UserController {

//    @RequestMapping(value = "/photo/like/{pictureId}")
//    @ResponseBody
//    public String likeUserPhoto(@PathVariable("pictureId") String pictureId, HttpServletRequest request, HttpServletResponse response) {
//        if (pictureId != null) {
//            Picture picture = pictureService.findById(pictureId);
//            Cookie[] cookies = request.getCookies();
//            boolean flag = false;
//            for (Cookie cookie : cookies) {
//                if (cookie.getName().equals(picture.getName())) {
//                    flag = true;
//                    break;
//                }
//            }
//            if (!flag) {
//                // update the photo like number
//                pictureService.updateLikeNumber(picture);
//
//                Cookie cookie = new Cookie(picture.getName(), "existed");
//                cookie.setMaxAge(3600 * 24);
//                response.addCookie(cookie);
//                return "success";
//            }
//        }
//        return "failed";
//    }

//    @RequestMapping(value = "/manage/deleteUser")
//    @ResponseBody
//    public String deleteUser(String uuids) {
//        if (uuids == null) {
//            return "failure";
//        }
//        String[] arr = uuids.split("#");
//        if (arr.length > 0) {
//            for (String uuid : arr) {
//                userService.delete(uuid);
//            }
//        }
//        return "success";
//    }

}

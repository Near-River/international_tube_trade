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
//
//    @RequestMapping(value = "/photo/upload", method = RequestMethod.POST)
//    public String uploadPhoto(@RequestParam(value = "uploadFile", required = false) MultipartFile file,
//                              HttpServletRequest request) {
//        User user = (User) request.getSession().getAttribute("globalUser");
//        if (file != null) {
//            // 取文件格式后缀名
//            String type = file.getOriginalFilename().substring(file.getOriginalFilename().indexOf("."));
//            // 取当前时间戳作为文件名
//            String filename = System.currentTimeMillis() + type;
//            // 文件存放的物理路径
//            String path = request.getSession().getServletContext().getRealPath("/images/gallery/" + filename);
//            File destFile = new File(path);
//            try {
//                // 复制临时文件到指定目录路径下
//                FileUtils.copyInputStreamToFile(file.getInputStream(), destFile);
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//            Picture picture = new Picture();
//            picture.setUuid(UUIDUtils.getUUID());
//            picture.setName(filename);
//            picture.setUrl("images/gallery/" + filename);
//            picture.setUserId(user.getUuid());
//            picture.setUserName(user.getLoginName());
//            picture.setCreatedDate(new Date());
//            picture.setLikeNumber(0);
//            pictureService.save(picture);
//            request.setAttribute("message", "success");
//        } else {
//            request.setAttribute("message", "failed");
//        }
//
//        return "redirect:../../user/userRegion/" + user.getUuid();
//    }
//
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

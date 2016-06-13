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

/**
 * @author near on 2016/3/29.
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {

//    @RequestMapping({"/search/findTopicsByKeywordAndPage/{pageNo}"})
//    public String findTopicsByKeywordAndPage(@PathVariable("pageNo") String pageNo, HttpServletRequest request) {
//        String keyword = request.getParameter("keyword").trim();
//        if ("".equals(keyword)) {
//            return "application/index";
//        }
//
//        Integer pageSize = 5;
//        Integer pageNum = (pageNo == null) ? 1 : Integer.parseInt(pageNo);
//        PageBean<Topic> pageBean = topicService.findByKeywordAndPage(keyword.split(" "), pageNum, pageSize);
//        request.setAttribute("pageBean", pageBean);
//
//        return "application/topic/topicList";
//    }
//
//    @RequestMapping(value = "/loginPage")
//    public String loginPage() {
//        return "application/user/login";
//    }




//    @RequestMapping(value = "/profile/{userId}")
//    public String userProfile(@PathVariable("userId") String userId, Model model) {
//        User user = userService.findById(userId);
//        model.addAttribute(user);
//        return "application/user/userProfile";
//    }
//
//
//    @RequestMapping(value = "/userRegion/{userId}")
//    public String userRegion(@PathVariable("userId") String userId, Model model) {
//        User user = userService.findById(userId);
//        model.addAttribute(user);
//        model.addAttribute("topicCount", topicService.getTotalCountByUserId(userId));
//        model.addAttribute("replyCount", replyService.getTotalCountByUserId(userId));
//        model.addAttribute("photoCount", pictureService.getTotalCountByUserId(userId));
//        List<Picture> pictures = pictureService.findByUserId(userId);
//        model.addAttribute("pictures", pictures);
//
//        return "application/user/userRegion";
//    }
//
//    @RequestMapping(value = "/postPage")
//    public String postTopic() {
//        return "application/user/postTopic";
//    }
//
//    @RequestMapping(value = "/topicList/{userId}")
//    @ResponseBody
//    public List<Topic> getTopicListByUser(@PathVariable("userId") String userId) {
//        List<Topic> topics = topicService.findByUserId(userId);
//        if (topics != null) {
//            for (Topic topic : topics) {
//                topic.setReplies(null);
//            }
//        }
//        return topics;
//    }
//
//    @RequestMapping(value = "/replyList/{userId}")
//    @ResponseBody
//    public List<Reply> getReplyListByUser(@PathVariable("userId") String userId) {
//        List<Reply> replies = replyService.findByUserId(userId);
//        if (replies != null) {
//            for (Reply reply : replies) {
//                reply.setTopic(null);
//            }
//        }
//        return replies;
//    }
//
//    @RequestMapping(value = "/photo/{userId}")
//    @ResponseBody
//    public List<Picture> userPhoto(@PathVariable("userId") String userId) {
//        List<Picture> pictures = null;
//        if (userId != null) {
//            pictures = pictureService.findByUserId(userId);
//        }
//        return pictures;
//    }
//
//    @RequestMapping(value = "/photo/delete/{pictureId}")
//    @ResponseBody
//    public List<Picture> deleteUserPhoto(@PathVariable("pictureId") String pictureId, HttpServletRequest request) {
//        if (pictureId != null) {
//            pictureService.delete(pictureId);
//        }
//        List<Picture> pictures = null;
//        User user = (User) request.getSession().getAttribute("globalUser");
//        if (user != null) {
//            pictures = pictureService.findByUserId(user.getUuid());
//        }
//        return pictures;
//    }
//
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
////    @RequestMapping(value = "/topicList/{userId}/{pageNo}")
////    @ResponseBody
////    public PageBean<SteerTube> getTopicListByUser(@PathVariable("userId") String userId, @PathVariable("pageNo") String pageNo) {
////        Integer pageSize = 5;
////        Integer pageNum = (pageNo == null) ? 1 : Integer.parseInt(pageNo);
////        return topicService.findByUserAndPage(userId, pageNum, pageSize);
////    }
//
//    /*****************************
//     * 后台管理模块
//     *****************************/
//
//    /*获取用户列表信息*/
//    @RequestMapping(value = "/manage/loadByPage")
//    @ResponseBody
//    public Map<String, Object> loadByPage(@RequestParam("page") Integer page, @RequestParam("rows") Integer rows) {
//        // {"total":28,"rows":[{...},...]}
//        Map<String, Object> map = new HashMap<String, Object>();
//        map.put("total", userService.getCount());
//        map.put("rows", userService.findAllByPage(page, rows));
//        return map;
//    }
//
//    @RequestMapping(value = "/manage/saveUser", method = RequestMethod.POST)
//    @ResponseBody
//    public String saveUser(User user) throws UnsupportedEncodingException {
//        if (user != null) {
//            if (userService.findByLoginName(user.getLoginName())) {
//                return "existed";
//            }
//            user.setUuid(UUIDUtils.getUUID());
//            user.setLoginName(URLDecoder.decode(user.getLoginName(), "utf-8"));
//            user.setUserName(URLDecoder.decode(user.getUserName(), "utf-8"));
//            user.setCity(URLDecoder.decode(user.getCity(), "utf-8"));
//            user.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
//            // 保存创建者信息
//            user.setCreatedDate(new Date());
//            //user.setCreatedBy("");
//
//            userService.save(user);
//            return "success";
//        }
//        return "failure";
//    }
//
//    @RequestMapping(value = "/manage/editUser")
//    @ResponseBody
//    public String editUser(User user, String oldPwd) throws UnsupportedEncodingException {
//        String uuid = user.getUuid();
//        if (uuid != null) {
//            User oldUser = userService.findById(uuid);
//            oldUser.setLoginName(URLDecoder.decode(user.getLoginName(), "utf-8"));
//            oldUser.setUserName(URLDecoder.decode(user.getUserName(), "utf-8"));
//            oldUser.setCity(URLDecoder.decode(user.getCity(), "utf-8"));
//
//            if (!user.getPassword().equals(oldPwd)) {
//                oldUser.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
//            }
//
//            oldUser.setGender(user.getGender());
//            oldUser.setProvince(user.getProvince());
//            oldUser.setBirthday(user.getBirthday());
//            // 更新修改者信息
//            oldUser.setLastModifiedDate(new Date());
//            //oldUser.setLastModifyBy("");
//            userService.update(oldUser);
//            return "success";
//        }
//        return "failure";
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

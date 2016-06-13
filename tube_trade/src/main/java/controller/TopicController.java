package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

/**
 * @author near on 2016/3/30.
 */
@Controller
@RequestMapping(value = "/topic")
public class TopicController {

//    @Autowired
//    private TopicService topicService;
//
//    @Autowired
//    private ReplyService replyService;
//
//    @RequestMapping(value = "/show/{topicId}")
//    public String loadByPage(@PathVariable("topicId") String topicId, Model model) {
//        Topic topic = topicService.findById(topicId);
//        List<Reply> replies = replyService.findByTopicId(topicId);
//        topic.setReplies(replies);
//        model.addAttribute("topic", topic);
//        return "application/topic/topicShow";
//    }
//
//    @RequestMapping(value = "/modifyPage/{topicId}")
//    public String modifyPage(@PathVariable("topicId") String topicId, Model model) {
//        Topic topic = topicService.findById(topicId);
//        model.addAttribute("topic", topic);
//        return "application/topic/modifyTopic";
//    }
//
//    @RequestMapping(value = "/update/{topicId}")
//    public String update(@PathVariable("topicId") String topicId, String topicEditor) {
//        Topic topic = topicService.findById(topicId);
//        Article article = topic.getArticle();
//        article.setContent(topicEditor);
//        topic.setArticle(article);
//        topicService.update(topic);
//        topicService.updateTopic(topic);
//
//        return "close";
//    }
//
//    @RequestMapping(value = "/{topicId}/reply")
//    @ResponseBody
//    public Reply saveReply(@PathVariable("topicId") String topicId, String pl,
//                           HttpServletRequest request) {
//        if ("".equals(topicId) || "".equals(pl)) {
//            throw new RuntimeException("reply content can not be empty.");
//        }
//        Topic topic = topicService.findById(topicId);
//        Reply reply = new Reply();
//
//        User user = (User) request.getSession().getAttribute("globalUser");
//        reply.setUuid(UUIDUtils.getUUID());
//        Article article = new Article();
//        article.setContent(pl);
//        article.setAuthor(user);
//
//        reply.setArticle(article);
//        reply.setTopic(topic);
//        reply.setCreatedBy(user.getLoginName());
//        reply.setCreatedDate(new Date());
//
////        List<Reply> replyList = topic.getReplies() == null ? new ArrayList<Reply>() : topic.getReplies();
////        replyList.add(reply);
////        topic.setReplies(replyList);
//        topic.setReplyCount(topic.getReplyCount() + 1);
//
//        topicService.update(topic);
//        replyService.save(reply);
//
//        Reply copy_reply = reply;
//        copy_reply.setTopic(null);
//        return copy_reply;
//    }
}

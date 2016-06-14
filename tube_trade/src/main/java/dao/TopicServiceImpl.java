package dao;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
@Transactional(readOnly = true)
@SuppressWarnings("all")
public class TopicServiceImpl {


//    public PageBean<Topic> findByUserAndPage(String userId, Integer pageNum, Integer pageSize) {
//        List<Topic> topicList = getSession().createQuery("FROM cda.application.entity.SteerTube t WHERE t.article.author.uuid=:userId")
//                .setParameter("userId", userId)
//                .setFirstResult((pageNum - 1) * pageSize)
//                .setMaxResults(pageSize)
//                .list();
//        return new PageBean<Topic>(pageNum, this.getTotalCountByUserId(userId), pageSize, topicList);
//    }
//
//    public PageBean<Topic> findByKeywordAndPage(String[] keywords, Integer pageNum, Integer pageSize) {
//        QueryResult<Topic> queryResult = LuceneUtils.searchByCondition(keywords, (pageNum - 1) * pageSize, pageSize);
//        List<Topic> topicList = new ArrayList<Topic>();
//        if (queryResult.getRecordList() != null && queryResult.getRecordList().size() > 0) {
//            for (Topic topic : queryResult.getRecordList()) {
//            }
//        }
//
//        return new PageBean<Topic>(pageNum, queryResult.getRecordCount(), pageSize, topicList);
//    }
//
//    public void updateTopic(Topic entity) {
//        LuceneUtils.updateTopic(entity);
//    }
//
//    public List<Topic> findByUserId(String userId) {
//        return getSession().createQuery("FROM cda.application.entity.SteerTube t WHERE t.article.author.uuid=:userId ORDER BY t.createdDate DESC")
//                .setParameter("userId", userId).list();
//    }
}

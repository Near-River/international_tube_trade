package dao;

import model.News;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import util.PageBean;

import java.util.List;

@Service
@Transactional(readOnly = true)
@SuppressWarnings("all")
public class NewsDao extends DaoSupport<News> {

    public PageBean<News> findByPage(Integer pageNum, Integer pageSize) {
        List<News> topicList = getSession().createQuery("FROM model.News n ORDER BY n.createdDate DESC")
                .setFirstResult((pageNum - 1) * pageSize)
                .setMaxResults(pageSize)
                .list();
        /* public PageBean(Integer currentPage, Integer totalCount, Integer pageSize, List<T> recordList) */
        return new PageBean<News>(pageNum, this.getCount(), pageSize, topicList);
    }

}

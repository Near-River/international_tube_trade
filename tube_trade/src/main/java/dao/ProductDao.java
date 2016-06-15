package dao;

import model.SteerTube;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import util.PageBean;

import java.util.List;

@Service
@Transactional(readOnly = true)
@SuppressWarnings("all")
public class ProductDao extends DaoSupport<SteerTube> {
    public PageBean<SteerTube> findByPage(Integer pageNum, Integer pageSize) {
        List<SteerTube> topicList = getSession().createQuery("FROM model.SteerTube n ORDER BY n.createdDate DESC")
                .setFirstResult((pageNum - 1) * pageSize)
                .setMaxResults(pageSize)
                .list();
        return new PageBean<SteerTube>(pageNum, this.getCount(), pageSize, topicList);
    }

}

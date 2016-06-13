package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

@SuppressWarnings("all")
@Transactional
public class DaoSupport<T> {

    private Class clazz = null;

    @Autowired
    private SessionFactory sessionFactory;

    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    public DaoSupport() {
        ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
        clazz = (Class<T>) pt.getActualTypeArguments()[0];
    }

    public void save(T entity) {
        getSession().save(entity);
    }

    public void update(T entity) {
        getSession().update(entity);
    }

    public void delete(Serializable id) {
        T entity = findById(id);
        if (id != null) {
            getSession().delete(entity);
        }
    }

    public void delete(Collection<T> collection) {
        if (collection != null && collection.size() > 0) {
            Session session = getSession();
            for (T entity : collection) {
                session.delete(entity);
            }
        }
    }

    @Transactional(readOnly = true)
    public T findById(Serializable id) {
        return (T) getSession().get(clazz, id);
    }

    @Transactional(readOnly = true)
    public List<T> findAll() {
        return getSession().createQuery("FROM " + clazz.getName()).list();
    }

    @Transactional(readOnly = true)
    public List<T> findAllByPage(Integer pageNo, Integer pageSize) {
        return getSession().createQuery("FROM " + clazz.getName())
                .setFirstResult((pageNo - 1) * pageSize)
                .setMaxResults(pageSize)
                .list();
    }

    @Transactional(readOnly = true)
    public List<T> findByIds(Serializable[] ids) {
        if (ids == null || ids.length <= 0) {
            return Collections.EMPTY_LIST;
        }
        return getSession().createQuery("FROM " + clazz.getName() + " u WHERE u.id in (:ids)")
                .setParameterList("ids", ids).list();
    }

    @Transactional(readOnly = true)
    public Integer getCount() {
        Long count = (Long) getSession().createQuery("SELECT COUNT(*) FROM " + clazz.getName()).uniqueResult();
        return count.intValue();
    }
}

package dao;

import model.User;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
@SuppressWarnings("all")
public class UserDao extends DaoSupport<User> {

    public User checkUser(String username, String password) {
        Criteria criteria = getSession().createCriteria(User.class);

        criteria.add(Restrictions.eq("username", username));
        criteria.add(Restrictions.eq("password", password));

        User user = (User) criteria.uniqueResult();
        return user;
    }
}

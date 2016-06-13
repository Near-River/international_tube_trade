package dao;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
@SuppressWarnings("all")
public class UserServiceImpl {
//
//    @Autowired
//    private SystemDDService systemDDService;
//
//    public User checkUser(String email, String password) {
//        Criteria criteria = getSession().createCriteria(User.class);
//
//        criteria.add(Restrictions.eq("email", email));
//        criteria.add(Restrictions.eq("password", password));
//
//        User user = (User) criteria.uniqueResult();
//        return user;
//    }
//
//    public boolean findByLoginName(String loginName) {
//        User user = (User) getSession().createQuery("FROM cda.application.entity.User u WHERE u.loginName=:loginName").setParameter("loginName", loginName).uniqueResult();
//        return user != null ? true : false;
//    }
//
//    public boolean findByEmail(String email) {
//        User user = (User) getSession().createQuery("FROM cda.application.entity.User u WHERE u.email=:email").setParameter("email", email).uniqueResult();
//        return user != null ? true : false;
//    }
//
//    @Override
//    public List<User> findAllByPage(Integer pageNo, Integer pageSize) {
//        List<User> users = super.findAllByPage(pageNo, pageSize);
//        for (User user : users) {
//            user.setGender(systemDDService.findValueByCodeAndKeyword(user.getGender(), "性别"));
//            user.setProvince(systemDDService.findValueByCodeAndKeyword(user.getProvince(), "省份"));
//        }
//        return users;
//    }
}

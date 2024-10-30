package com.task.Repository;

import java.time.LocalDateTime;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.task.Model.User;

@Repository
public class userRepository {

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public String addUserInfo(String name, String password) {
        try {
            Session session = sessionFactory.getCurrentSession();
            User user = new User(name, password);
            session.save(user);
            return "success";
        } catch (HibernateException e) {
            System.out.println(e);
            return "Corrupted";
        }
    }

    @Transactional
    public List<User> getUsers() {
        Session session = sessionFactory.openSession();
        List<User> users = null;

        try {
            Criteria criteria = session.createCriteria(User.class);
            criteria.add(Restrictions.gt("visitCount", 0));
            users = criteria.list();
        } catch (HibernateException e) {
            System.out.println(e);
        } finally {
            session.close();
        }
        return users;
    }

    @Transactional
    public String validateLogin(String name, String password) {
        Session session = sessionFactory.getCurrentSession();
        String message = "failed";

        try {
            Criteria criteria = session.createCriteria(User.class);
            criteria.add(Restrictions.eq("userName", name));
            criteria.add(Restrictions.eq("password", password));
            User user = (User) criteria.uniqueResult();

            if (user != null) {

                user.setVisitCount(user.getVisitCount() + 1);
                user.setLastLogin(LocalDateTime.now());

                session.update(user);

                message = "LoggedIn Successfully";
            }
        } catch (HibernateException e) {
            System.out.println(e);
        }

        return message;
    }
}

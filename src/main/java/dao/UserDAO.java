package dao;

import model.User;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

@Repository
public class UserDAO {

    private Session session;

    UserDAO() {this.session = HibernateUtil.getSessionFactory().openSession();}

    User login(String login, String password) {
        try {
            String loginRequest = "FROM User AS User WHERE User.login =:login " +
                    "AND User.password =:password";
            Query query = session.createQuery(loginRequest);
            query.setParameter("login", login);
            query.setParameter("password", password);
            return (User) query.getSingleResult();
        }catch(NoResultException e){
            return null;
        }
    }

    boolean signUp(String login, String password, String firstName, String lastName) {
        if(!ifUserExists(login))
        {
            Transaction txn = session.beginTransaction();
            User user = new User();
            user.setLogin(login);
            user.setPassword(password);
            user.setFirstName(firstName);
            user.setLastName(lastName);
            session.save(user);
            txn.commit();
            session.close();
            return true;
        }else {
            return false;
        }
    }

    private boolean ifUserExists(String login) {
        String selectUserRequest = "FROM User AS User WHERE User.login =:login";
        Query query = session.createQuery(selectUserRequest);
        query.setParameter("login", login);
        try {
            User user = (User) query.getSingleResult();
        } catch (NoResultException e) {
            //logger.info(e);
            return false;
        } catch ( NonUniqueResultException e) {
            //logger.info(e);
            return false;
        }
        return true;
    }






}

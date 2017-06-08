package com.niit.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.modaldto.Product;
import com.niit.modaldto.User;
import com.niit.modaldao.Userdao;

@Transactional
@Repository("userdao")
public class Userdaoimpl implements Userdao {
	@Autowired
    SessionFactory sessionFactory;
	public  Userdaoimpl(SessionFactory sessionFactory)
    {
        System.out.println("ProductDAO Object Created");
        this.sessionFactory=sessionFactory;
    }
     
    @Transactional
	public void addUser(User user)
    {
        Session session=sessionFactory.getCurrentSession();
        session.save(user);
    }
     
    @Transactional
    /*public void deleteUser(int cid)
    {
        Session session=sessionFactory.getCurrentSession();
        User user=(User)session.get(User.class,cid);
        session.delete(user);
    }*/
	

	/*public void updateUser(User user) {
		System.out.println("session started");
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		session.update(user);
		System.out.println("Transaction going to commit");
		transaction.commit();
		System.out.println("session closed");
		session.close();

	}*/

	
	/*public User getuserByUsername(String username) {
		Query query=sessionFactory.getCurrentSession().createQuery("from User");
		query.setString(0, username);
		return (User) query.uniqueResult();
	}*/

	 public List<User> displayAll()
	    {
	        Session session=sessionFactory.openSession();
	        Query query=session.createQuery("from User");
	        @SuppressWarnings("unchecked")
	        List<User> list=(List<User>)query.list();
	        session.close();
	        return list;
	    }

	
}

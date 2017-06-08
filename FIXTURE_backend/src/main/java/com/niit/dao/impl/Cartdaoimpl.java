package com.niit.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.modaldao.Cartdao;
import com.niit.modaldto.Cart;
 
@Repository("cartdao")
public class Cartdaoimpl implements Cartdao 
{
    @Autowired
    SessionFactory sessionFactory;
     
    public Cartdaoimpl(SessionFactory sessionFactory)
    {
    	System.out.println("entered cartdaoimpl");
        this.sessionFactory=sessionFactory;
    }
     
    @Transactional
    public void addtoCart(Cart cart)
    {
        sessionFactory.getCurrentSession().save(cart);
    }
     
    @Transactional
    public void deleteCartItem(int cid)
    {
        Cart myCartItem=(Cart)sessionFactory.getCurrentSession().get(Cart.class,cid);
        sessionFactory.getCurrentSession().delete(myCartItem);
    }
    @Transactional
    public Cart getCartItem(int cid)
    {
        Session session=sessionFactory.getCurrentSession();
        Cart mycartitem=(Cart)session.get(Cart.class,cid);
        //session.close();
        return mycartitem;
         
    }
     
    @Transactional
    public void updateCart(Cart cart)
    {
        sessionFactory.getCurrentSession().update(cart);
    }
    @Transactional
    public List<Cart> getCartItems(String username)
    {
        Query q=sessionFactory.openSession().createQuery("from Cart where status='NP' and username=:uname");
        q.setParameter("uname",username);
        @SuppressWarnings("unchecked")
        List<Cart> list=q.list();
        return list;
    }
}
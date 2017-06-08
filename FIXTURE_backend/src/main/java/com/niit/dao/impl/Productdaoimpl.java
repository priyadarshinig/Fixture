package com.niit.dao.impl;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.modaldao.Productdao;
import com.niit.modaldto.Product;
 
@Repository("productdao")
public class Productdaoimpl implements Productdao 
{
    @Autowired
    SessionFactory sessionFactory;
	public  Productdaoimpl(SessionFactory sessionFactory)
    {
        System.out.println("ProductDAO Object Created");
        this.sessionFactory=sessionFactory;
    }
     
    @Transactional
	public void addProduct(Product product)
    {
        Session session=sessionFactory.getCurrentSession();
        session.save(product);
    }
     
    @Transactional
    public void deleteProduct(int prodid)
    {
        Session session=sessionFactory.getCurrentSession();
        Product product=(Product)session.get(Product.class,prodid);
        session.delete(product);
    }
     
    public List<Product> retrieveProduct()
    {
        Session session=sessionFactory.openSession();
        Query query=session.createQuery("from Product");
        @SuppressWarnings("unchecked")
        List<Product> list=(List<Product>)query.list();
        session.close();
        return list;
    }
     
    public Product getProduct(int prodid)
    {
        Session session=sessionFactory.openSession();
        Product product=(Product)session.get(Product.class,prodid);
        session.close();
        return product;
    }
     
    @Transactional
    public void updateProduct(Product product)
    {
        Session session=sessionFactory.getCurrentSession();
        session.update(product);
    }
}
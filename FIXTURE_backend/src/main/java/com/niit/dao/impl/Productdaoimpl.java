package com.niit.dao.impl;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.modaldao.Productdao;
import com.niit.modaldto.Product;


@Repository("productdao")
@Transactional
public class Productdaoimpl implements Productdao {
	@Autowired
	SessionFactory sessionFactory;
	public void addProduct(Product product) {
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		session.saveOrUpdate(product);
		transaction.commit();
		session.close();
		
	}

	public void updateProduct(Product product) {
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		session.update(product);
		transaction.commit();
		session.close();
		
	}

	public void deleteProduct(int prodid) {
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		session.delete(prodid);
		transaction.commit();
		session.close();
		
	}

	public Product getproductByProduct(String prodname) {
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		Product product = session.createQuery("FROM Product where prodname ='"+prodname+"'",Product.class).getSingleResult();
		transaction.commit();
		session.close();
		return product;
	}

	public List<Product> displayAll() {
		return sessionFactory.getCurrentSession().createQuery("from Product").list();

	}

}

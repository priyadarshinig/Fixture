package com.niit.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.modaldao.Categorydao;
import com.niit.modaldto.Category;



@Repository("categorydao")
public class Categorydaoimpl implements Categorydao 
{
	@Autowired
	SessionFactory sessionFactory;
	
	public Categorydaoimpl(SessionFactory sessionFactory)
	{
		System.out.println("CategoryDAO Object Created");
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional
	public void addCategory(Category category)
	{
		Session session=sessionFactory.getCurrentSession();
		session.save(category);
	}
	
	@Transactional 
	public void deleteCategory(int catid)
	{
		Session session=sessionFactory.getCurrentSession();
		Category category=(Category)session.get(Category.class,catid);
		session.delete(category);
	}
	
	public List<Category> retrieve()
	{
		Session session=sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Category> list=session.createQuery("from Category").list();
		session.close();
		return list;
	}

	public Category getCategoryById(int catid) {
		 Session session=sessionFactory.openSession();
	        Category category=(Category)session.get(Category.class,catid);
	        session.close();
	        return category;
	}
	
	@Transactional
	public void updateCategory(Category category) {
		Session session=sessionFactory.getCurrentSession();
        session.update(category);
		
	}
}

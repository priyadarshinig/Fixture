package com.niit.dao.impl;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.modaldao.Addressdao;
import com.niit.modaldto.Address;

@Repository("addressdao")
@Transactional
public class Addressdaoimpl implements Addressdao
{
	@Autowired 
	SessionFactory sessionFactory;
	
	public Addressdaoimpl(SessionFactory sessionFactory)
	{
    	System.out.println("entered addressdaoimpl");
		this.sessionFactory=sessionFactory;
	}

	public void save(Address address) 
	{
		sessionFactory.getCurrentSession().save(address);
	}

}
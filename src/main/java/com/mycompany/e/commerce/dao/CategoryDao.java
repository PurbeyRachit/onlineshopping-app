/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.e.commerce.dao;



import java.util.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.mycompany.e.commerce.entities.Category;

/**
 *
 * @author HP
 */
public class CategoryDao {
    
    private SessionFactory factory;

    public CategoryDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    //saves the category
    public int saveCategory(Category cat)
    {
        Session session = this.factory.openSession();
        Transaction tx = session.beginTransaction();
       int catId = (int) session.save(cat);
        
        tx.commit();
        
        session.close();
        return catId;
    }
       
    public List<Category> getCategories()
    {
    	Session s = this.factory.openSession();
    	Query query =s.createQuery("from Category");
    	List<Category> list = query.list();
    	return list;
    	
    	
    }
    public Category getCategoryById(int cid)
    {
    	Category cat = null;
    	try {
    		
    		Session session = this.factory.openSession();
    		cat = session.get(Category.class, cid);
    		session.close();
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return cat;
    }
    
    
}

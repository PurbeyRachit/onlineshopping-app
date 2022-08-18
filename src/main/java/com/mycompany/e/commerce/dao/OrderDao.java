
package com.mycompany.e.commerce.dao;

import org.hibernate.SessionFactory;

import com.mycompany.e.commerce.entities.OrderDetails;
import com.mycompany.e.commerce.entities.User;
import com.mycompany.e.commerce.servlets.OrderServlet;

import org.hibernate.query.Query;
import org.hibernate.Session;

public class OrderDao {
    private SessionFactory factory;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    public OrderDao(SessionFactory factory){
        this.factory = factory;
    }
    
    //get user by email and password
    public OrderServlet getAllOrder(int orderid , String name,String email,int phone, String address,String date){
        
        OrderServlet order_details = null;
        
        try{
            String query="from order_details where name =: n and email =: e and phone =: p and address =: a and date =: d";
            Session session = this.factory.openSession();
            Query q = session.createQuery(query);
            q.setParameter("n", name);
            q.setParameter("e", email);
            q.setParameter("p",phone);
            q.setParameter("a", address);
            q.setParameter("d", date);
        
           order_details = (OrderServlet) q.uniqueResult();
         
            session.close();
         }
         catch(Exception e)
            {
            e.printStackTrace();
            }
        
  return order_details ;
    }
}

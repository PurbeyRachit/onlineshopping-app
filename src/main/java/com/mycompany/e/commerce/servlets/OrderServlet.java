package com.mycompany.e.commerce.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.mycompany.e.commerce.entities.OrderDetails;
import com.mycompany.e.commerce.entities.User;
import com.mycompany.e.commerce.helper.FactoryProvider;
import com.mycompany.e.commerce.helper.FactoryProvider;
import java.io.IOException;
import javax.servlet.ServletException;


/**
 * Servlet implementation class Order
 */
@WebServlet("/Order")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		try{
			 String userName = request.getParameter("user_name");
             String userEmail = request.getParameter("user_email");
            // String userPassword = request.getParameter("user_password");
             String userPhone = request.getParameter("user_phone");
             String userAddress = request.getParameter("user_address");
            String userDate = request.getParameter("date");
            // validations
            
            
            //creating user object to store data
             
         OrderDetails order_details = new OrderDetails(userName,userEmail,userPhone, userAddress, userDate);
              Session hibernateSession = FactoryProvider.getFactory().openSession();
          
          
              Transaction tx = hibernateSession.beginTransaction();
             int order_id = (int) hibernateSession.save(order_details);
              
              
              tx.commit();
              hibernateSession.close();
              HttpSession  httpSession = request.getSession();
              httpSession.setAttribute("message", "Order has been Successful !!" +"Your Order Id is: " +order_id );
              response.sendRedirect("index.jsp");
              return;
          }
          
          catch(Exception e)
          {
              e.printStackTrace();
          }
      }
  

	}



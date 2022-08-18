package com.mycompany.e.commerce.entities;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class OrderDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length =10, name="orderid")
    private int orderid;
    @Column(length =100, name="name")
    private String name;
    @Column(length =100, name="email")
    private String  email;
    
    @Column(length =100, name="phone")
    private String phone;
    @Column(length = 1500, name="address")
    private String address;
    @Column(length = 1500, name="date")
    private String date;
    
    
            
    public OrderDetails(int orderid, String name, String email, String phone, String address, String date) {
        this.orderid = orderid;
        this.name = name;
        this.email = email;
        this.phone = phone;
        
        this.address = address;
        this.date = date;
    }


    public OrderDetails( String name, String email, String phone, String address, String date) {
       
        this.name = name;
        this.email = email;
        this.phone = phone;
        
        this.address = address;
        this.date = date;
    }
    public OrderDetails() {
    }

    public int getorderid() {
        return orderid;
    }

    public void setUserId(int orderid) {
        this.orderid = orderid;
    }

    public String getname() {
        return name;
    }

    public void setUserName(String name) {
        this.name = name;
    }

    public String getemail() {
        return email;
    }

    public void setUserEmail(String email) {
        this.email = email;
    }


    public String address() {
        return address;
    }

    public void setUserAddress(String address) {
        this.address = address;
    }

    public String getdate() {
        return date;
    }

    public void setUserType(String date) {
        this.date = date;
    }

    
    @Override
    public String toString() {
        return "OrderDetails{" + "orderid=" + orderid + ", name=" + name + ", email=" + email + ", phone=" + phone +  ", address=" + address +", date=" + date + '}';
    }
    
       
}



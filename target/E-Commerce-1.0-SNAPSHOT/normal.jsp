<%-- 
    Document   : normal
    Created on : 28-May-2022, 8:42:26 AM
    Author     : HP
--%>


<%@page import="com.mycompany.e.commerce.entities.User"%>
<%
    

     User user = (User)session.getAttribute("current-user");
    
    if(user == null)
    {
    session.setAttribute("message","You are not logged in !! Login first");
    return;
    }
    else
    {
       if(user.getUserType().equals("normal"))
       {
       //session.setAttribute("message", "You are not admin ! Do not access this page");
       response.sendRedirect("index.jsp");
       return;
           
    }
    }


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>normal user</h1>
    </body>
</html>

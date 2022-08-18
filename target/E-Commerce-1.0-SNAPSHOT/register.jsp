<%-- 
    Document   : register
    Created on : 26-May-2022, 12:12:00 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New user</title>
        <%@include file="components/common_css_js.jsp"  %>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>
        <div class="container-fluid">

            <div class="row mt-5">
                <div class ="col-md-4 offset-md-4">
                    <div class="card">
                        <%@include file="components/message.jsp" %>
                    <div class="card-body ps-5">
                        <div class="container text-center">
                            <img src="img/reg.png" style="max-width: 100px;" class="img-fluid">
                        </div>
                        <h3 class="text-center my-3">Sign up here !!</h3>
                        <form action="RegisterServlets" method="post">
                            <div class="form-group">
                            <label for="name">User Name</label>
                            <input name="user_name" type="text" class="form-control" id="name" placeholder="enter your name" aria-describedby="emailHelp" >
                            </div>
                                <div class="form-group">
                                    <label for="email">User email</label>
                                    <input name="user_email" type="email" class="form-control" id="email" placeholder="enter your email" aria-describedby="emailHelp" >
                                    </div>
                                        <div class="form-group">
                                            <label for="password">User Password</label>
                                            <input name="user_password" type="password" class="form-control" id="password" placeholder="enter your password" aria-describedby="emailHelp" >
                                            </div>
                                                <div class="form-group">
                                                    <label for="phone">User Mobile No</label>
                                                    <input name="user_phone" type="number" class="form-control" id="phone" placeholder="enter your mobile no:" aria-describedby="emailHelp">
                                                    </div>
                                                <div class="form-group">
                                                            <label for="address">User Address</label>
                                                            <textarea name="user_address" style="height:150px;" class="form-control" placeholder="Enter your Address"></textarea>
                                                    </div>
                                                <div class="container text-center">
                                               <button type="submit" class="btn btn-outline-sucess">Register</button>
                                               <button type="reset" class="btn btn-outline-warning">Reset</button>
                                               </div>
                                                   
                                               </form>
                                                   </div>
                                                </div>
                                            </div>

            
        </div>    
                    </div>

                    
    </body>
</html>

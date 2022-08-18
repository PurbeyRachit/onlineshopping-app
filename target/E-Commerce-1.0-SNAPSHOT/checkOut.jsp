<%

User user = (User) session.getAttribute("current-user");
if(user == null){
	session.setAttribute("message", "You are not logged in !! Login first to access checkout page ");
	response.sendRedirect("login.jsp");
	return;
}




%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>checkout-e_commerce</title>
<%@include file="components/common_css_js.jsp" %>
</head>
<body>
<%@include file="components/navbar.jsp" %>


<div class="container">
<div class="row mt-5">
<!-- card -->
<div class="col-md-6">

<div class="card">
<div class="card-body">
<h3 class="text-center mb-5"> Your Selected Items..</h3>
 
      
<div class="cart-body"> 

</div>
</div>
</div>
</div>
<div class="col-md-6">

<div class="card">
<div class="card-body">
<h3 class="text-center my-3">Your Details for Order</h3>
                        <form action="#">
                            <div class="form-group">
                            <label for="name">Your Name</label>
                            <input value="<%=user.getUserName() %>" name="user_name" type="text" class="form-control" id="name" placeholder="enter your name" aria-describedby="emailHelp" >
                            </div>
                                <div class="form-group">
                                    <label for="email">Your email</label>
                                    <input value="<%=user.getUserEmail() %>" name="user_email" type="email" class="form-control" id="email" placeholder="enter your email" aria-describedby="emailHelp" >
                                    </div>
                                        
                                                <div class="form-group">
                                                    <label for="phone">Your Mobile No</label>
                                                    <input value="<%= user.getUserPhone() %>" name="user_phone" type="number" class="form-control" id="phone" placeholder="enter your mobile no:" aria-describedby="emailHelp">
                                                    </div>
                                                <div class="form-group">
                                                            <label for="address">Your Shipping Address</label>
                                                            <textarea value="<%=user.getUserAddress() %>" name="user_address" style="height:150px;" class="form-control" placeholder="Enter your Address"></textarea>
                                                    </div>
                                                <div class="container text-center">
                                               
                                               <a href="order.jsp"><button type="button" class="btn btn-outline-success">Order Now</button></a>
                                               <button  class="btn btn-outline-primary">continue shopping </button>
                                              
                                               </div>
                                                   
                                               </form>

</div>
</div>
</div>
</div>

</div>

</body>
</html>
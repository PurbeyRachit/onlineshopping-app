<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row mt-5">
			<!-- card -->
			<div class="col-md-6">

				<div class="card">
					<div class="card-body">
						<form action="#">
							<div class="form-group">
								<label for="name">Card Holder Name</label> <input type="text"
									class="form-control"
									placeholder="enter name written on card... "
									aria-describedby="emailHelp" required >
							</div>
							<div class="form-group">
								<label for="email">Your email</label> <input type="email"
									class="form-control" id="email"
									placeholder="enter your email..." aria-describedby="emailHelp"
									required />
							</div>

							<div class="form-group">
								<label for="phone">Your Mobile No</label> <input type="number"
									class="form-control" placeholder="enter your mobile no:"
									aria-describedby="emailHelp" required />
							</div>
							<div class="form-group">
								<label for="phone">Expiry date </label> <input type="number"
									class="form-control" placeholder="mm / yy"
									aria-describedby="emailHelp" required />
							</div>
							<div class="form-group">
								<label for="phone">CV</label> <input type="number"
									class="form-control" placeholder="enter cvv number"
									aria-describedby="emailHelp" required />
							</div>

							<div class="container text-center">
								<button class="btn btn-outline-success">Order Now</button>
								<a href="order.jsp"><button type="button"
										class="btn btn-outline-success">Order Now</button></a>
								<button class="btn btn-outline-primary">continue
									shopping</button>

							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>
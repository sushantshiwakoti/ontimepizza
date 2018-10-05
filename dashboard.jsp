
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/navbar.css">
<script src="js/jquerycdn.js"></script>
<script src="js/multiple_pizza_form.js"></script>
<script src="js/navbar.js"></script>
</head>
<body>
	<div id="wrapper" class="animate">
		<nav
			class="navbar header-top fixed-top navbar-expand-lg navbar-dark bg-dark">
		<span class="navbar-toggler-icon leftmenutrigger"></span> <a
			class="navbar-brand" href="#">LOGO</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarText" aria-controls="navbarText"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarText">
			<ul class="navbar-nav animate side-nav">
				<li class="nav-item active"><a class="nav-link" href="dashboard.jsp"
					title="Dashboard"><i class="fas fa-cube "></i> Dashboard <i
						class="fas fa-cube shortmenu animate"></i></a></li>
				<li class="nav-item"><a class="nav-link" href="ordertable.jsp"
					title="Client order"><i class="fas fa-cart-plus"></i>Client
						Order<i class="fas fa-cart-plus shortmenu animate"></i></a></li>
				<li class="nav-item"><a class="nav-link" href="#"
					title="Print Order"><i class="fas fa-print"></i>Print Order<i
						class="fas fa-print shortmenu animate"></i></a></li>
			</ul>
			<ul class="navbar-nav ml-md-auto d-md-flex">
				<li class="nav-item"><a class="nav-link" href="#"><i
						class="fas fa-user"></i> Profile</a></li>
				<li class="nav-item"><a class="nav-link" href="#"><i
						class="fas fa-key"></i> Logout</a></li>
			</ul>
		</div>
		</nav>
		<div class="container-fluid">
			<div class="row">
				<div class="col">
					<div class="card">
						<div class="card-body">
							<h3 class=fof>Food Order Form</h3>
							<form class="form-horizontal" method="post" action="orderservlet">
								<div class="form-group">
									<label for="inputPassword" class="control-label col-xs-2">
										<b>Customer Name</b>
									</label>
									<div class="col-xs-5">
										<input type="text" class="form-control" name="customername"
											id="inputEmail" placeholder="Customer Name"  required>
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword" class="control-label col-xs-2">
										<b>Phone Number</b>
									</label>
									<div class="col-xs-5">
										<input type="number" class="form-control"
											name="customer_phonenumber" id="inputPassword"
											placeholder="Phone Number" required>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail" class="control-label col-xs-2"><b>Customer
											Address</b></label>
									<div class="col-xs-5">
										<textarea class=form-control name="customeraddress"
											placeholder="Customer Address" required></textarea>
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword" class="control-label col-xs-2"><b>Date</b></label>
									<div class="col-xs-5">
										<input type="date" class="form-control" id="inputPassword"
											placeholder="Password" name="orderdate" required>
									</div>
								</div>
								<div class="wrapper">
									<div class="form-group">
										<div class="row">
											<div class="col">
												<label for="inputPassword" class="control-label "><b>Pizza
														Name</b></label> <select name="pizzaname[]" class="form-control" >
													<option selected>Choose</option>
													<option>abc</option>
													<option>xyz</option>
												</select>
											</div>
											<div class="col">
												<label for="inputPassword" class="control-label"><b>Pizza
														Size</b></label> <select name="pizzasize[]" class="form-control">
													<option selected>Choose</option>
													<option>Small</option>
													<option>Medium</option>
													<option>Large</option>
												</select>
											</div>
											<div class="col">
												<label for="inputPassword" class="control-label"><b>Pizza
														Quantity</b></label> <input type="number" class="form-control"
													id="inputEmail" name="pizza_order_quantity[]"
													placeholder="Number of Pizza" min="1" name="pizzanumber" required>
											</div>
											<div class="col">
												<button type="button"
													class="add_pizza_field btn btn-success">+</button>
											</div>

										</div>

									</div>

								</div>
								<div class="form-group">
									<div class="col-xs-offset-2 col-xs-10">
										<button type="submit" class="btn btn-success">Submit
											Order</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script defer
		src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>

	<script src="js/bootstrap.min.js"></script>

</body>
</html>
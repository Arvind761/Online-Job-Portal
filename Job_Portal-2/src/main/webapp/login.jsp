<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="all_component/all_css.jsp"%>


</head>
<body style="background-color: #f0f1f2">
<%@include file="all_component/navbar.jsp"%>
<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 Class="text-center"><i class="fa-solid fa-user-plus mr-1"></i><br>Login Page</h4>
						
						<form action="login" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Email Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="email" >
								
							</div>						
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1" required="required"
									 name="password">
							</div>
							
							<div class="text-center">
							<button type="submit" class="btn btn-primary badge-pill btn-block">Login</button><br>
							<a href="signup.jsp">Create Account</a>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>



<%@include file="all_component/footer.jsp"%>

</body>
</html>





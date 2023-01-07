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
						<h4 Class="text-center text-success"><i class="fa-solid fa-user-plus fa-3x"></i><br>Edit Profile</h4>
						
						<form action="update_profile"method="post">
						<input type="text" name="id" value="id:   ${userobj.id }">
						<div class="form-group">
						<label>Enter full Name</label>
						<input type="text" required="required" class="form-control" id="exampleInputEmail" aria-describedly="emailHelp"
						name="name" value="${userobj.name }">
						</div>
						<div class="form-group">
						<label>Enter Qualification</label>
						<input type="text" required="required" class="form-control" id="exampleInputEmail" aria-describedly="emailHelp"
						name="qua" value="${userobj.qualification }">
						</div>
						<div class="form-group">
						<label>Enter email</label>
						<input type="email" required="required" class="form-control" id="exampleInputEmail" aria-describedly="emailHelp"
						name="email" value="${userobj.email }">
						</div>
						<div class="form-group">
						<label>Enter password</label>
						<input type="password" required="required" class="form-control" id="exampleInputEmail" aria-describedly="emailHelp"
						name="ps" value="${userobj.password }">
						</div>
						</form>
						
						<button type="submit" 
						class="btn btn-primary badge-pill btn-block">Update
						
						
						</button>

					</div>
				</div>
			</div>
		</div>
	</div>



<%@include file="all_component/footer.jsp"%>

</body>
</html>

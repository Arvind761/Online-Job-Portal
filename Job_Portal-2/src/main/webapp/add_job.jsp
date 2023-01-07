<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Page : Post Job</title>


<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2">

<c:if test="${userobj.role ne 'admin' }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>

<%@include file="all_component/navbar.jsp"%>

<div class="container p-2">
			<div class="col-md-10 offset-md-1">
				<div class="card">
					<div class="card-body">
						<div class="text-center text-success">
						<i class="fa-solid fa-users fa-3x"></i><br>
						<c:if test="${not empty succMsg }">
							<div class="alert alert-success" role="alert">${ succMsg}</div>
							<c:remove var="succMsg"/>
						</c:if>
						<h5>Add Jobs</h5>
						 
						 
						  </div>
						
						
						
						<form action="add_job" method="post">
							<div class="form-group">
								<label>Enter Title</label> <input
									type="text" class="form-control" required="required" name="title">
								
							</div>
							<div class="form-row">
							 <div class="form-group col-md-4">
							 	<label>location</label>
							 	<select name="location" class="custom-select" id="inlineFormCustomSelectPref">
							 	<option selected>choose...</option>
							 	<option value="Odisha">Odisha</option>
							 	<option value="Jharkhand">Jharkhand</option>
							 	<option value="Keral">Keral</option>
							 	<option value="Gujrat">Gujrat</option>
							 	<option value="Bhuneshwar">Bhuneshwar</option>
							 	<option value="Delhi">Delhi</option>
							 	<option value="Chennai">Chennai</option>
							 	<option value="Hydrabad">Hydrabad</option>
							 	</select>
							 </div>
							
							 <div class="form-group col-md-4">
							 	<label>Category</label>
							 	<select name="category" class="custom-select" id="inlineFormCustomSelectPref">
							 	<option selected>choose...</option>
							 	<option value="odisha">It</option>
							 	<option value="Developer">Developer</option>
							 	<option value="Banking">Banking</option>
							 	<option value="Engineer">Engineer</option>
							 	<option value="Teacher">Teacher</option>
							 	</select>
							 </div>
							 
							 <div class="form-group col-md-4">
							 	<label>Status</label>
							 	<select name="status" class="form-control" >
							 	<option selected>choose...</option>
							 	<option value="Active">Active</option>
							 	<option value="Inactive">Inactive</option>
							 	</select>
							 </div>
							</div>
							<div class="form-group">
								<label>Enter Description</label>
								<textarea rows="6" cols="" name="desc" class="form-control "></textarea>
							</div>
							<button type="submit" class="btn btn-success ">Publish Job</button>
						</form>

					</div>
				</div>
			</div>
		
	</div>
	

</body>
</html>
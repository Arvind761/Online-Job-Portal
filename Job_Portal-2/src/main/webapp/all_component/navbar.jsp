<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="#"><span class="text-success"><h1>Dav Portal</h1></span></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>


			<c:if test="${userobj.role eq 'admin'}">
				<li class="nav-item"><a class="nav-link" href="add_job.jsp"><i
						class="fa-solid fa-circle-plus mr-1 "></i>Post Job</a></li>
				<li class="nav-item"><a class="nav-link" href="view_job.jsp"><i
						class="fa-sharp fa-solid fa-eye mr-1"></i>View Job</a></li>
			</c:if>

		</ul>
		<form class="form-inline my-2 my-lg-0">

			<c:if test="${userobj.role eq 'admin' }">

				<a href="#" class="btn btn-light mr-1"><i
					class="fa-solid fa-user-plus mr-1"></i>admin</a>
				<a href="logout" class="btn btn-light"><i
					class="fa-solid fa-right-to-bracket mr-1"></i>Logout</a>

			</c:if>


			<c:if test="${userobj.role eq 'user' }">
				<a href="#" class="btn btn-light mr-1" data-toggle="modal" data-target="#exampleModal" ><i
					class="fa-solid fa-user-plus mr-1"></i> ${userobj.name} </a>
				<a href="logout" class="btn btn-light"><i
					class="fa-solid fa-right-to-bracket mr-1"></i>Logout</a>
			</c:if>




			<c:if test="${empty userobj }">

				<a href="login.jsp" class="btn btn-light mr-1"><i
					class="fa-solid fa-right-to-bracket mr-1"></i>Login</a>
				<a href="signup.jsp" class="btn btn-light"><i
					class="fa-solid fa-user-plus mr-1"></i>SingUp</a>
			</c:if>
		</form>
	</div>
</nav>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="card">
					<div class="card-body">
						<div class="text-center text-success">
							<i class="fa-solid fa-user fa-4x"></i>
						</div>
						<table class="table">
							<tbody>
								<tr>
									<th scope="row">Name</th>
									<th>${userobj.name }</th>
								</tr>
								<tr>
									<th scope="row">Email</th>
									<th>${userobj.qualification }</th>
								</tr>
								<tr>
									<th scope="row">Qualification</th>
									<th>${userobj.password }</th>
								</tr>

							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<a href="edit_profile.jsp" type="button" class="btn btn-primary">Edit</a>
			</div>
		</div>
	</div>
</div>
</body>
</html>
<%@page import="com.entity.Jobs"%>
<%@page import="com.DB.DBConnection"%>
<%@page import="com.dao.JobDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin : View Jobs</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body>
<c:if test="${userobj.role ne 'admin' }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>

	<%@include file="all_component/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h5 class="text-center text-primary">All Jobs</h5>
				<c:if test="${not empty succMsg }">
							<div class="alert alert-success" role="alert">${ succMsg}</div>
							<c:remove var="succMsg"/>
						</c:if>

				<%
				JobDAO dao = new JobDAO(DBConnection.getConn());
				List<Jobs> list = dao.getAllJobs();
				for (Jobs j : list) {
				%>
				<div class="card mt-2">
					<div class="card-body">
						<div class="text-center text-success fa-3x">
							<i class="fa-solid fa-book-open-reader"></i>
						</div>
						<h6>
							<%=
							j.getTitle() %>
						</h6>
						<p>
							<%=
							j.getDescription() %>
						</p>
						<br>
						<div class="form-row">
							<div class="form-group colo-md-4 mr-2">
								<input type="text" class="form-control form-control-sm"
									value="location:j.<%=j.getLocation() %>" readonly>
							</div>
							<div class="form-group colo-md-4 mr-2">
								<input type="text" class="form-control form-control-sm"
									value="category:<%=j.getCategory() %>" readonly>
							</div>
							<div class="form-group colo-md-4 mr-2">
								<input type="text" class="form-control form-control-sm"
									value="status:<%=j.getStatus() %>" readonly>
							</div>

						</div>
						
						<h6>
							Publish Date:<%=j.getPdate() %>						</h6>
						<div class="text-center">
							<a href="edit_jobs.jsp?id=<%=j.getId() %>" class="btn btn-sm bg-success text-white">Edit</a> 
							<a
								href="delete?id=<%=j.getId() %>"  class="btn btn-sm bg-primary text-white">Delete</a>
						</div>

					</div>
				</div>
				<%
				}
				%>
			</div>
		</div>
	</div>

<%@include file="all_component/footer.jsp"%>


</body>
</html>



-------------------------------------------------------

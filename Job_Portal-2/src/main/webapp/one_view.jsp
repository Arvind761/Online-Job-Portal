<%@page import="com.DB.DBConnection"%>
<%@page import="com.entity.Jobs"%>
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
<title>User : View Jobs</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body>
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<%@include file="all_component/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">

			
			<%
			    int id=Integer.parseInt(request.getParameter("id"));
				JobDAO dao = new JobDAO(DBConnection.getConn()); 
				Jobs j=dao.getJobById(id);
		
			%>
			<div class="card mt-2">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="fa-solid fa-book-open-reader fa-2x"></i>
						</div>
						<h6><%=j.getTitle() %></h6>
						<p><%= j.getDescription() %></p>
						
						<br>
						<div class="form-row">
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="location: <%=j.getLocation() %>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Category: <%=j.getCategory() %>" readonly>
							</div>
						</div>
						<h6>
							Publish Date:<%=j.getPdate().toString() %></h6>
						
					</div>
				</div>
				
				</div>
				</div>
				</div>


</body>
</html>
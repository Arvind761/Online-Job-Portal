<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin : Page</title>
<style type="text/css">
.back-img{
background: url("img/b2.jpg");
width:100%;
height:100vh;
background-repeat: no-repeat;
background-size: cover;

}
</style>
<%@include file="all_component/all_css.jsp"%>
</head>
<body>
<c:if test="${userobj.role ne 'admin' }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>

<%@include file="all_component/navbar.jsp"%>
<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-dark p-4">
				<i class="fa-solid fa-book" aria-hidden="true"></i>Welcome Admin
			</h1>
		</div>
	</div>

<%@include file="all_component/footer.jsp"%>

</body>
</html>
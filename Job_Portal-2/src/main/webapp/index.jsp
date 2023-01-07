<%@page import="com.DB.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Job Portal</title>
<style type="text/css">
.back-img{
background: url("img/b1.jpg");
width:100%;
height:80vh;
background-repeat: no-repeat;
background-size: cover;

}
</style>
<%@include file="all_component/all_css.jsp"%>
</head>
<body>



<%@include file="all_component/navbar.jsp"%>


<!--  <% Connection conn=DBConnection.getConn(); 
out.println(conn);
%>-->
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-dark p-4">
				<i class="fa-solid fa-book" aria-hidden="true"></i> Online Job Portal
			</h1>
			<h1 class="text-success"> -: Abstract :-</h1>	
			<h4 class="text-white bg-success ">Dreams Job  is an online Job Search Portal, a web application through which job seekers
can register and apply for jobs. Through this portal employers can also post their jobs and
review applications. The traditional recruitment systems are time taking and costly. A job
seeker must find jobs through advertisements, college fairs, job fairs etc., and the
employers must put in much effort to find the right candidate for a vacant position. This
application addresses such shortcomings and is a convenient platform for both job seekers
to find and apply for jobs and for employers to post jobs and review applications with much
ease. Candidates can search for jobs in any field through advanced search capabilities.
They can upload their resumes to this application which is stored for future use also.
Employers can download these resumes and post/delete job positions. The admin controls
this portal and makes the decision about companies and jobs that can access/appear in this
portal</h4>
			
		</div>
		
		 
		
		
	</div>
	<%@include file="all_component/footer.jsp"%> 

</body>
</html>
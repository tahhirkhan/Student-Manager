<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page isELIgnored="false" %>
<%@ page import="studentManager.models.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="org.springframework.ui.Model" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style>
	h2 {
                font-family: Arial;
                padding-bottom: 20px;
                padding-top: 20px;
            }
</style>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>

	<nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="home">Home</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-brand mb-0 h1"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarNav">
	      <ul class="navbar-nav">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="getAllStudents">All Students</a>
	        </li>
			<li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="editStudentPage">Edit Student</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="deleteStudentPage">Delete Student</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="findStudentPage">Find Student</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>

	
	
	 <h2 class="d-flex justify-content-center">Search Result</h2>
	<div style="padding: 4px" class="container border border-primary rounded">
	
        <table class="table" >
            <thead class="table-primary">
                <tr>
                    <th scope="col">ID</th> 
                    <th scope="col">NAME</th>
                    <th scope="col">ADDRESS</th>
                    <th scope="col">BRANCH</th>
                    <th scope="col">GENDER</th>
                    <th scope="col">EMAIL</th>
                </tr>
            </thead>

        
    
	
	<%
	
		Student student =(Student) request.getAttribute("student");
	
	%>
	
			<tr>
			
				<td><%= student.getId() %></td>
				<td><%= student.getName() %></td>
				<td><%= student.getAddress() %></td>
				<td><%= student.getBranch() %></td>
				<td><%= student.getGender() %></td>
				<td><%= student.getEmail() %></td>
				
			</tr>
	
		</table>
	</div>


</body>
</html>
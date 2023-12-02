<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


	<style>
	
		.navbar {
			margin-bottom: 50px;
		}
	
	</style>
<title>Insert title here</title>
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
	
	
	<div class="container w-50 p-5 border border-primary rounded as">
            <h3 class="d-flex justify-content-center">ADD STUDENT</h3>
            <br>
            <form action="addStudent" method="POST">
            
            	<div class="row mb-3">
                    <label  class="col-sm-2 col-form-label">ID</label>
                    <div class="col-sm-10">
                        <input type="number" name="id" class="form-control border border-primary">
                    </div>
                </div>
            
                <div class="row mb-3">
                    <label  class="col-sm-2 col-form-label">NAME</label>
                    <div class="col-sm-10">
                        <input type="text" name="name" class="form-control border border-primary">
                    </div>
                </div>

                <div class="row mb-3">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">ADDRESS</label>
                    <div class="col-sm-10">
                        <input type="text" name="address" class="form-control border border-primary" id="inputPassword3">
                    </div>
                </div>

                <div class="row mb-3">
                    <label class="col-sm-2 col-form-label">EMAIL</label>
                    <div class="col-sm-10">
                        <input type="email" name="email" class="form-control border border-primary">
                    </div>
                </div>

                <div class="row mb-3">
                    <label  class="col-sm-2 col-form-label">DEPARTMENT</label>
                    <div class="col-sm-10">
                        <select id="inputState" name="branch" class="form-select border border-primary">
                            <option selected>SELECT</option>
                            <option>Computer Science & Engineering</option>
                            <option>Information Technology</option>
                            <option>Mechanical Engineering</option>
                            <option>Electrical Engineering</option>
                            <option>Chemical Engineering</option>
                        </select>
                    </div>
                </div>

                <fieldset class="row g-3">
                    <legend class="col-form-label col-sm-2 pt-0">GENDER</legend>
                    <div class="col-sm-10">
                        <div class="form-check">
                            <input class="form-check-input border border-primary" value="Male" type="radio" name="gender" id="gridRadios1">
                            <label class="form-check-label" for="gridRadios1">
                                MALE
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input border border-primary" value="Female" type="radio" name="gender" id="gridRadios2">
                            <label class="form-check-label" for="gridRadios2">
                                FEMALE
                            </label>
                        </div>
                    </div>
                </fieldset>
                <br>
                <br>
                <button type="submit" class="w-100 p-2 btn btn-success">Add Student</button>
                <br>
                <br>
                <button type="reset" class="w-100 p-2 btn btn-primary">Reset Fields</button>
            </form>
        </div>
	
	
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
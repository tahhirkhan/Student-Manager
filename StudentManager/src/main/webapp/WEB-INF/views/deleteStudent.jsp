<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

        <style>
            .students {
                margin-top: 80px;
            }

            .students a {
                margin:  15px;
            }

            h3 {
                font-family: Arial;
                padding-bottom: 20px;
            }

            /* NAVBAR STYLING STARTS */
            .navbar {
                display: flex;
                align-items: center;
                justify-content: space-between;
                background-color: teal;
                color: #fff;
            }

            .nav-links a {
                color: #fff;
            }

            /* LOGO */
            .logo {
                font-size: 32px;
                padding-left: 14px;
            }

            /* NAVBAR MENU */
            .menu {
                display: flex;
                gap: 1em;
                font-size: 18px;
            }

            .menu li:hover {
                color: red;
                border-radius: 5px;
                transition: 0.3s ease;
            }

            .menu li {
                margin: 9px 20px 0px 20px;

            }

            ul {
                text-decoration: none;
            }

            li {
                list-style: none;
                text-decoration: none;
            }
        </style>
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
	          <a class="nav-link active" aria-current="page" href="findStudentPage">Find Student</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>

        <div class="container w-25 p-5 border border-danger rounded students">
            <h3 class="d-flex justify-content-center">DELETE STUDENT</h3>
            <form method="POST" action="deleteStudentResult">
                <div class="row">
                    <div class="col">
                        <input name="id" type="number" class="form-control border border-danger" placeholder="Id of the student" aria-label="First name">
                    </div>

                </div>

                <br>

                <button type="submit" class="w-100 p-2 btn btn-danger">Delete</button>
            </form>
        </div>

    </body>
</html>
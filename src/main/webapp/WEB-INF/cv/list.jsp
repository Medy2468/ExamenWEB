<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Lister</title>
		<!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="template/assets/favicon.ico" />

	    <!-- Google Web Fonts -->
	    <link rel="preconnect" href="https://fonts.googleapis.com">
	    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	    <link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap" rel="stylesheet"> 
	
	    <!-- Icon Font Stylesheet -->
	    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
	
	    <!-- Libraries Stylesheet -->
	    <link href="assets/lib/animate/animate.min.css" rel="stylesheet">
	    <link href="assets/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
	
	    <!-- Customized Bootstrap Stylesheet -->
	    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
	
	    <!-- Template Stylesheet -->
	    <link href="assets/css/style.css" rel="stylesheet">
	</head>
	<body>
		 <!-- Topbar Start -->
    <div class="container-fluid bg-dark text-light p-0">
        <div class="row gx-0 d-none d-lg-flex">
            <div class="col-lg-7 px-5 text-start">
                <div class="h-100 d-inline-flex align-items-center me-4">
                    <small class="fa fa-map-marker-alt text-primary me-2"></small>
                    <small>Liberté 6 Dakar, SENEGAL</small>
                </div>
            </div>
            <div class="col-lg-5 px-5 text-end">
                <div class="h-100 d-inline-flex align-items-center me-4">
                    <small class="fa fa-phone-alt text-primary me-2"></small>
                    <small>+221781513851</small>
                </div>
                <div class="h-100 d-inline-flex align-items-center mx-n2">
                    <a class="btn btn-square btn-link rounded-0 border-0 border-end border-secondary" href="https://www.facebook.com/exauce.nsangou"><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-square btn-link rounded-0 border-0 border-end border-secondary" href=""><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-square btn-link rounded-0 border-0 border-end border-secondary" href=""><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-square btn-link rounded-0" href="https://www.instagram.com/md_le_jeune_conscient/"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
        <a href="accueil" class="navbar-brand d-flex align-items-center border-end px-4 px-lg-5">
            <h2 class="m-0"><i class="fa fa-car text-primary me-2"></i>MD AUTO</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="index.jsp" class="nav-item nav-link active">Accueil</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">CV</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="cv" class="dropdown-item">Ajouter</a>
                        <a href="list" class="dropdown-item">Lister</a>
                    </div>
                </div>
                <a href="contact.html" class="nav-item nav-link">Contact</a>
            </div>
             <!--<form class="d-flex">
                <button class="btn btn-white" type="text">
                    <span class="badge bg-dark text-white ms-1 rounded-pill"><a class="nav-link" href={{ path('app_logout')}}>{{ app.user.prenom }} {{ app.user.nom }}</a></span>
                </button>
            </form> -->
        </div>
    </nav>
    <!-- Navbar End -->
    
    <div class="container col-md-12">
	        <div class="card">
	             <div class="card-header text-center bg-dark text-white">Liste des cv </div>
	                <div class="card-body">
    					<table class="table table-bordered table-striped">
								<tr>
									<th>ID</th>
									<th>Nom</th>
									<th>Prenom</th>
									<th>Age</th>
									<th>Adresse</th>
									<th>Email</th>
									<th>Mot de passe</th>
									<th>Téléphone</th>
									<th>Specialité</th>
									<th>Niveau Etude</th>
									<th>Experience Professionnelle</th>
									<th scope="col" colspan="2">Action</th>
								</tr>
								<c:forEach items="${cvs}" var="cv">
									<tr>
										<td>${cv.id}</td>
										<td>${cv.nom}</td>
										<td>${cv.prenom}</td>
										<td>${cv.age} ans</td>
										<td>${cv.adresse}</td>
										<td>${cv.email}</td>
										<td>******</td>
										<td>${cv.telephone}</td>
										<td>${cv.specialite}</td>
										<td>${cv.niveauEtude}</td>
										<td>${cv.experienceProfessionnelle}</td>
										<td>...</td>
				                   		<td class="btn btn-outline-warning">
				                        <i class="fas fa-th-list"> <a href="modifier">Edit</a></i>
				                    	</td>
				                    	<td class="btn btn-outline-danger">
				                        <i class="fas fa-trash"> <a href="supprimer">Supr</a></i>
				                    	</td>
									</tr>
							</c:forEach>
					  </table>
    			</div>
      		</div>
       </div>
	</body>
</html>
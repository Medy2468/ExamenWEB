<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
	<title>Inscription </title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/template/assets/log.jpg" />
   
        <!--Bootsrap 4 CDN-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        
        <!--Fontawesome CDN-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    
        
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<link rel="stylesheet" href="css/style.css"/>
</head>
   <div class="container col-md-6">
			<div class="card">
				<div class="card-header text-center bg-dark text-white">Formulaire d'ajout cv</div><br><br>
				<div class="card-body">
	                <form method="post" action="inscription">
	                	<div class="form-group">
							<label class="control-label">Nom</label>
							<input class="form-control" type="text" name="nom" id="nom" placeholder="Nom" required/>
					    </div>
					    <div class="form-group">
							<label class="control-label">Prénom</label>
							<input class="form-control" type="text" name="prenom" id="prenom" placeholder="Prenom" required/>
						</div>
						<div class="form-group">
							<label class="control-label">Age</label>
							<input class="form-control" type="text" name="age" id="age" placeholder="Age" required/>
						</div>
						<div class="form-group">
							<label class="control-label">Adresse</label>
							<input class="form-control" type="text" name="adresse" id="adresse" placeholder="Adresse" required/>
						</div>
						<div class="form-group">
							<label class="control-label">Email</label>
							<input class="form-control" type="email" name="email" id="email" placeholder="Email" required/>
						</div>
						<div class="form-group">
							<label class="control-label">Password</label>
							<input class="form-control" type="password" name="password" id="password" placeholder="Password" required/>
						</div>
						<div class="form-group">
							<label class="control-label">Telephone</label>
							<input class="form-control" type="text" name="telephone" id="telephone" placeholder="Telephone" required/>
						</div>
						<div class="form-group">
							<label class="control-label">Specialite</label>
							<input class="form-control" type="text" name="specialite" id="specialite" placeholder="Specialite" required/>
						</div>
						<div class="form-group">
							<label class="control-label">Niveau Etude</label>
							<input class="form-control" type="text" name="niveauEtude" id="niveauEtude" placeholder="Niveau Etude" required/>
						</div>
						<div class="form-group">
							<label class="control-label">Experience Professionnelle</label>
							<input class="form-control" type="text" name="experienceProfessionnelle" id="experienceProfessionnelle" placeholder="Experience Professionnelle" required/>
						</div>
						<div>
							<input class="btn btn-success" type="submit" name="Inscrire" id="Inscrire"/>
						</div>
						</form>
						<button><a href="index.jsp">
							Comme back to login
						</a></button>
	                </div>
	        </div>
	    </div>
	    
	</body>
</html>
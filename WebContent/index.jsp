<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="AngularStore">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>angular store</title>
<link rel="stylesheet" href="styles/bootstrap.css"></link>
<link rel="stylesheet" href="styles/bootstrap-theme.css"></link>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#/">Store</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#about">About</a></li>
				<li><a href="#catalog">Catalog</a></li>
				<li><a href="#contact">Contact</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar hidden-sm hidden-xs">
				<div class="list-group">
					<a href="#" class="list-group-item active"> Cras justo odio </a> <a
						href="#" class="list-group-item">Dapibus ac facilisis in</a> <a
						href="#" class="list-group-item">Morbi leo risus</a> <a href="#"
						class="list-group-item">Porta ac consectetur ac</a> <a href="#"
						class="list-group-item">Vestibulum at eros</a>
				</div>
			</div>
			<div ng-view></div>
		</div>
		
	</div>
	

	<script src="js/jquery.min.js"></script>
	<script src="js/angular.js"></script>
	<script src="js/angular-route.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<script src="app/app.js"></script>
	<script src="app/routes.js"></script>

	<script src="app/controllers/AboutController.js"></script>
	<script src="app/controllers/CatalogController.js"></script>
	<script src="app/controllers/ContactController.js"></script>
	<script src="app/controllers/HomeController.js"></script>

	<script src="app/services/ProductsService.js"></script>
</body>
</html>
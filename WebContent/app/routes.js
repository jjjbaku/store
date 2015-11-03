angular.module('AngularStore').config(function($routeProvider) {
	$routeProvider
	.when('/', {
		redirectTo: '/Home'
	})
	.when('/Home', {
		templateUrl: "templates/home.jsp",
		controller: "HomeController"
	})
	.when('/About',{
		templateUrl: "templates/about.jsp",
		controller: "AboutController"
	})
	.when('/Catalog',{
		templateUrl: "templates/catalog.jsp",
		controller: "CatalogController"
	}).when('/Contact',{
		templateUrl: "templates/contact.jsp",
		controller: "ContactController"
	})
});
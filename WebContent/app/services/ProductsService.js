angular.module('AngularStore').factory('ProductsService',function($http){
	var service = {};
	service.getProducts = function(){
		return $http.get('data/products.json');
	}
	service.addProduct = function(products){
		//should have back-end support
	}
	service.deleteProduct = function(product){
		//should have back-end support
	}
	return service;
});
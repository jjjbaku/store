angular.module('AngularStore').controller('HomeController', function(ProductsService,$scope){
	ProductsService.getProducts().then(function(data){
		$scope.products = data.data;
	});
	$scope.search = {};
	$scope.newProduct = {};
	$scope.addProduct = function(newProduct){
		if(Object.keys(newProduct).length>0){ // check if newProduct is empty
			$scope.products.push(newProduct);
			ProductsService.addProduct($scope.products);	
		}
	}
	$scope.deleteProduct = function(product){
		remove($scope.products, product);
		ProductsService.deleteProduct(product);
	}
	
	function remove(arr, item) {
	      for(var i = arr.length; i--;) {
	          if(arr[i] === item) {
	              arr.splice(i, 1);
	          }
	      }
	  }
});
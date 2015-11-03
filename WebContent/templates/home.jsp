<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="col-sm-9  col-md-10 main">
	<form class="navbar-form navbar-left col-sm-12 col-md-12" role="search">
		<div class="form-group">
			search:<input type="text" class="form-control"
				placeholder="Search by Item name" ng-model="search.input.$">
		</div>
	</form>
	<form class="navbar-form navbar-left col-sm-12 col-md-12" role="add">
		<div class="form-group">
			Add Item
			<input type="text" name="name" class="form-control" placeholder="Item name" ng-model="newProduct.name">
			<input type="text" name="description" class="form-control" placeholder="Description" ng-model="newProduct.description"> 
			<input type="text" name="price" class="form-control" placeholder="Price" ng-model="newProduct.price"> 
			<input type="submit" name="submit" value="ADD" class="btn btn-default" ng-click="addProduct(newProduct)">
		</div>
	</form>
	<div class="navbar-form navbar-left col-sm-12 col-md-12">
		<div class="col-sm-12 col-md-12 well well-lg" ng-repeat="product in products | filter:search.input">
			<div class="col-sm-8 col-md-8">
				<h2>
					{{product.name}}  
				</h2>
				<p>{{product.description}}</p>
			</div>
			<div class="col-sm-2 col-md-2">
				<span class="btn btn-primary">{{product.price | currency}}</span>
			</div>
			<div class="col-sm-2 col-md-2">
                <span class="glyphicon glyphicon-remove-sign" ng-click="deleteProduct(product)">delete</span>
            </div>
		</div>
	</div>
</div>
</body>
</html>
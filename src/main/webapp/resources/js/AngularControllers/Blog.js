app.controller('BlogController', [ '$scope', '$http', function($scope, $http) {
	var BASE_URL = 'http://localhost:8081/CRAFTCLAN';
	$scope.userid=document.getElementById("userid").value;
	$scope.submit = function() {
		var BASE_URL = 'http://localhost:8081/CRAFTCLAN';
		$scope.blog = {	
			bid       : $scope.blogid,
			blogName : $scope.blogName,
			blogDesc : $scope.blogDesc,
		}
		$http({
			method : 'POST',
			url : BASE_URL + '/CreateBlog',
			data : $scope.blog
		}).success(function(data, status, headers, config) {
			alert("Success");
			$scope.blogid ='';
			$scope.blogName = '';
			$scope.blogDesc = '';
		}).error(function(data, status, headers, config) {
			alert("Error");
		});	
	};
	
	
	$scope.getAllBlogs= function() {
		$http({
			method : 'GET',
			url : 'getAllBlogs'
		}).success(function(data, status, headers, config) {
			$scope.blogs = data;// alert(data); 
		}).error(function(data, status, headers, config) {
			alert("Error");
		});
	};
	
	
	$scope.deleteBlog = function(bid) {
		$http({
			method : 'DELETE',
			url : 'deleteBlog/'+bid
		}).success(function(data, status, headers, config) {
			alert("Success"); 
		}).error(function(data, status, headers, config) {
			alert("Error");
		});
	}
	
	
	$scope.editBlog = function(bid) {
		$http({
			method : 'GET',
			url : 'editBlog/'+bid
		}).success(function(data, status, headers, config) {
			$scope.blog = data;// alert(data); 
			$scope.blogid = $scope.blog.bid;
			$scope.blogName = $scope.blog.blogName;
			$scope.blogDesc = $scope.blog.blogDesc;
		}).error(function(data, status, headers, config) {
			alert("Error");
		});
	};
	$scope.accessBlog = function(b_userid) {
		 		//alert("Hello"+b_userid);
		 		if($scope.userid==b_userid)
		 		{
                 console.log($scope.userid);
		 			
		 			return true;
		 		console.log("true")

		 		}
		 		else
		 		{
		 			return false;
		 			console.log("false")
		 		}
		 	}
	}]);
		  



angular.module('app', ['HotelUrbano']);

function homeCtrl($scope, $http){
	$scope.hotels = [];

	$scope.findOnPeriod = function(){
		$http.get('http://localhost:3000/hotels/in/cancun/from/14-03-2015/to/13-03-2015').success(function(resp){
			if(resp.hotels.length > 0){
				$scope.hotels = resp.hotels
			}else{
				$scope.oi = 'descupe, hotel ou cidade com nome Acapulco nao pode ser encontrado'
			}

		});
	}
}
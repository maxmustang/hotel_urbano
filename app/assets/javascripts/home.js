angular.module('app', ['HotelUrbano']);

function homeCtrl($scope, $http){
	$scope.hotels = [];
	$scope.checkIn = '09/03/2015';
	$scope.checkOut = '16/03/2015';
	$scope.searchTerm = 'cancun';
		
	$scope.findOnPeriod = function(){

		var url = generetaUrl($scope.searchTerm, $scope.checkIn, $scope.checkOut);
		$http.get(url).success(function(resp){
			console.log(resp)
			$scope.message = 'Buscando o melhor hotel pra vc :D'
			if(resp.hotels.length > 0){
				$scope.message = null
				$scope.hotels = resp.hotels
			}else{
				$scope.hotels = [];
				$scope.message = 'descupe, hotel ou cidade com nome Acapulco nao pode ser encontrado'
			}

		});
	}
}

function generetaUrl(searchTerm, checkIn, checkOut){
	var parsedCheckIn = replaceAll(checkIn, '/', '-');
	var parsedCheckOut = replaceAll(checkOut, '/', '-')
	return 'http://localhost:3000/hotels/in/' + searchTerm + '/from/' + parsedCheckIn + '/to/'+ parsedCheckOut;
}

function replaceAll(str, find, replace) {
  return str.replace(new RegExp(find, 'g'), replace);
}


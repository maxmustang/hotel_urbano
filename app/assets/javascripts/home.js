angular.module('app', ['HotelUrbano']);

function homeCtrl($scope, $http){
	$scope.hotels = [];
	$scope.message = 'Buscando o melhor hotel pra vc :D'
	$scope.showMessage = true
	$scope.showPeriod = false
	
	$scope.findOnPeriod = function(){
		var url = generetaUrl($scope.searchTerm, $scope.checkIn, $scope.checkOut);
		$http.get(url).success(function(resp){
			$scope.showPeriod = true
			if(resp.hotels.length > 0){
				$scope.showMessage = false
				$scope.message = null
				$scope.hotels = resp.hotels
			}else{
				$scope.hotels = [];
				$scope.showMessage = true
				$scope.message = ':( descupe, hotel ou cidade com nome '+ $scope.searchTerm + ' nao pode ser encontrado'
			}
		});
	}
}

function generetaUrl(searchTerm, checkIn, checkOut){
	var parsedCheckIn = replaceAll(checkIn, '/', '-');
	var parsedCheckOut = replaceAll(checkOut, '/', '-')
	return '/hotels/in/' + searchTerm + '/from/' + parsedCheckIn + '/to/'+ parsedCheckOut;
}

function replaceAll(str, find, replace) {
  return str.replace(new RegExp(find, 'g'), replace);
}


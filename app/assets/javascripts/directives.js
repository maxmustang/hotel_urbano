var hotelUrbano = angular.module('HotelUrbano', []);

hotelUrbano.directive('datepicker', function() {
  var today = new Date();
  var minDate = today.getDay() + '/' + (today.getMonth() + 1)  +'/' + (today.getYear() + 1900)
  console.log(minDate)
  return function(scope, element, attrs) {
    element.datepicker({
      dateFormat: 'dd/mm/yy',
      constrainInput: true,   
      showAnim : 'clip',
      showSpeed : 'slow',
      showWeeks: true,
      numberOfMonths:2,
      minDate: minDate ,
      onSelect : function(dateText, elem){
        $(this).trigger('input');
      }
    });
   }
});

hotelUrbano.directive('autocomplete', function($http){
    return function(scope, element, attrs){
      element.autocomplete({
        source: function(request, callback){
          var url = 'http://localhost:3000/hotels/destination/' + scope.searchTerm
          var list = []
          $http.get(url).success(function(resp){
            if(resp.not_found){
              list.push(resp.not_found)
            }else{
              for (var i = 0; i < resp.hotels.length; i++) {
                  list.push(resp.hotels[i].name);
                };
            }
            callback(list)
          })
        },
        select: function( event, ui ){
          element.trigger('input');
        },
        change: function(event, ui){
          element.trigger('input');
        }
      })
    }
})
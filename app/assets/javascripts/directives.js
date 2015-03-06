var hotelUrbano = angular.module('HotelUrbano', []);

hotelUrbano.directive('datepicker', function() {
  var today = new Date();
  var minDate = (today.getDay() + 1) + '/' + (today.getMonth() + 1)  +'/' + (today.getYear() + 1900)
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
        element.trigger('input');
      }
    });
   }
});

hotelUrbano.directive('autocomplete', function($http){
    return function(scope, element, attrs){
      element.autocomplete({
        source: function(request, callback){
          if( scope.searchTerm.length > 2){
            var url = '/hotels/destination/' + scope.searchTerm
            var list = []
            $http.get(url).success(function(resp){
              if(resp.not_found){
                list.push(resp.not_found)
              }else{
                for(var i in resp.names){
                  list.push(resp.names[i])
                }
              }
              callback(list);
            });
          }
        },
        select: function( event, ui ){
          scope.searchTerm = ui.item.label;
          scope.$apply();
        },
        change: function(event, ui){
          element.trigger('input');
        }
      })
    }
})
var hotelUrbano = angular.module('HotelUrbano', []);

hotelUrbano.directive('datepicker', function() {
  return function(scope, element, attrs) {
    element.datepicker({
      dateFormat: 'dd/mm/yy',
      constrainInput: true,   
      showAnim : 'clip',
      showSpeed : 'slow',
      showWeeks: true,
      onSelect : function(dateText, elem){
        $(this).trigger('input');
      }
    });
   }
});
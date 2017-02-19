// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$(function(){
  function initialize() {
    var $input = $('#searchTextField');
    var options = {
        types: ['(cities)'],
    };
    autocomplete = new google.maps.places.Autocomplete($input, options);
  };
  google.maps.event.addDomListener( window, 'load', initialize);
});

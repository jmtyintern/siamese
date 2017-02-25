// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$(function(){
  var latlngFrom = new google.maps.LatLng(33.889577, 130.885284);
  var latlngTo   = new google.maps.LatLng(33.989577, 130.985284);
  //プレイスを検索する領域
  var bounds = new google.maps.LatLngBounds(latlngFrom, latlngTo);
  //検索文字列を取得
  var input = document.getElementById('textField');
  //検索オプション
  var options = {
  bounds: bounds,
  types: ['establishment'],
  componentRestrictions: {country: 'jp'}
  };
  //オートコンプリート
  autocomplete = new google.maps.places.Autocomplete(input,options);
});

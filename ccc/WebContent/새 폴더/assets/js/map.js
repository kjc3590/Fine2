
$(document).ready(function() {



var mapCanvas = document.getElementById('map-canvas');
var mapProp = {
  center: new google.maps.LatLng(37.509912, 127.036715),
  zoom:15,
  mapTypeId: google.maps.MapTypeId.ROADMAP
};

var map = new google.maps.Map(mapCanvas,mapProp);

// Create a marker and set its position.
  var marker = new google.maps.Marker({
       
 
    position: new google.maps.LatLng(37.509912, 127.036715),
    
    title: '이안 베스트 !'
  });

marker.setMap(map);


setTimeout(function(){

  google.maps.event.trigger(map,'resize');
},100);
/*종찬지도끝 170227  */   




});


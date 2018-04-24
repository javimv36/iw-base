<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
<div id="map-panel" class="panel panel-default">
                    <div class="panel-heading">
                    <i class="fa fa-map-marker fa-fw"></i>
                    Mapa
                   
                </div>
                <!-- /.panel-heading -->
			    <div class="panel-body">
			    	<div id="map" style="height: 400px;"></div>
			        <ul id="instructions">
					</ul>
                </div>
                <!-- /.panel-body -->
			</div>
			<!-- /.panel #map-panel -->

<!-- Scripts necesarios para generar los mapas -->

<%@ include file="gmapskey.jsp"%>
<script src="${s}/js/gmaps.js"></script>
<script type="text/javascript">
    var map;
    
      map = new GMaps({
        el: '#map',
        lat: -12.043333,
        lng: -77.028333,
        zoomControl : true,
        zoomControlOpt: {
            style : 'SMALL',
            position: 'TOP_LEFT'
        },
        panControl : false,
        streetViewControl : false,
        mapTypeControl: false,
        overviewMapControl: false
      });
      function buscaDireccion(){
    	  
    	  GMaps.geocode({
              address: $('#direccion').val().trim(),
              callback: function(results, status){
                if(status=='OK'){
                  var latlng = results[0].geometry.location;
                  map.setCenter(latlng.lat(), latlng.lng());
                  map.addMarker({
                    lat: latlng.lat(),
                    lng: latlng.lng()
                  });
                }
              }
            });
      }
      
	  function buscaDireccionDiv(){
		  var url="";
    	  GMaps.geocode({
              address: $('#direccion').html(),
              callback: function(results, status){
                if(status=='OK'){
                  var latlng = results[0].geometry.location;
                  map.setCenter(latlng.lat(), latlng.lng());
                  map.addMarker({
                    lat: latlng.lat(),
                    lng: latlng.lng()
                  });
                  url= latlng.lat() + ',' + latlng.lng();
                  $('#direccion').data("coords", url);
                }
                
		    	var qrs = document.getElementsByClassName("qrcode");
		   		new QRCode(qrs[0], {
				    text: 'http://google.com/maps/search/?api=1&query='+ $('#direccion').data("coords") ,
				    width: 256,
				    height: 256,
				    colorDark : "#000000",
				    colorLight : "#ffffff",
				    correctLevel : QRCode.CorrectLevel.H
		   		});
              }
            });
    	  return url;
      }
  </script>
<!-- Fin scripts gmaps -->
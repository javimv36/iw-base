<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
<div id="map-panel" class="panel panel-default">
                    <div class="panel-heading">
                    <i class="fa fa-map-marker fa-fw"></i>
                    Mejor ruta estimada
                    <div class="btn-group pull-right">
                        <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-chevron-down"></i>
                        </button>
                        <ul class="dropdown-menu slidedown">
                            <li>
                                <a href="#">
                                    <i class="fa fa-refresh fa-fw"></i> Reordenar
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-check-circle fa-fw"></i> Available
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-times fa-fw"></i> Busy
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-clock-o fa-fw"></i> Away
                                </a>
                            </li>
                            
                        </ul>
                    </div>
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
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js"></script>
<script src="${s}/js/gmaps.js"></script>
<script type="text/javascript">
var map;
$(document).ready(function(){
  map = new GMaps({
    el: '#map',
    lat: -12.043333,
    lng: -77.028333
  });
  map.travelRoute({
    origin: [-12.044012922866312, -77.02470665341184],
    destination: [-12.090814532191756, -77.02271108990476],
    travelMode: 'driving',
    step: function(e){
      $('#instructions').append('<li>'+e.instructions+'</li>');
      $('#instructions li:eq('+e.step_number+')').delay(450*e.step_number).fadeIn(200, function(){
        map.drawPolyline({
          path: e.path,
          strokeColor: '#131540',
          strokeOpacity: 0.6,
          strokeWeight: 6
        });  
      });
    }
  });
});
</script>
<!-- Fin scripts gmaps -->
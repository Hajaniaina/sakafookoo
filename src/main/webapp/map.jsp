<!DOCTYPE html>

    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
      html { height: 100% }
      body { height: 100%; margin: 0; padding: 0 }
      #carteId { height: 100% }
    </style>
    <script type="text/javascript"
    src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
    </script>
		
  <script type="text/javascript">

	function initialiser() {
		var centre = new google.maps.LatLng(-18.938403,47.521973);
		var mapOptions = {
			zoom: 13,
			center: centre,
			mapTypeId: google.maps.MapTypeId.ROADMAP
		}
		var carte = new google.maps.Map(document.getElementById("carteId"), mapOptions);
		var tableauPointsPolyligne =[
			
		];
		
		var maPolyline = new google.maps.Polyline({
		path: tableauPointsPolyligne,
		strokeColor: '#FF0000',
		strokeOpacity: 10,
		strokeWeight: 2

		});
		maPolyline.setMap(carte);
		// Add 5 markers to the map.
		var nbrArret = 15;
		var urlIcon= '';
		var liste_des_points = [
			[urlIcon,-18.954751,47.524272],
			[urlIcon,-18.906083,47.519827],
			[urlIcon,-18.974236,47.522413],										
			[urlIcon,-18.918475,47.521882],
			[urlIcon,-18.950242,47.521522],
			[urlIcon,-18.935191,47.521866],
			[urlIcon,-18.963453,47.52259],
			[urlIcon,-18.942671,47.577718],
			[urlIcon,-18.971194,47.529649],
			[urlIcon,-18.943512,47.52959],
			[urlIcon,-18.967556,47.530197],
			[urlIcon,-18.998753,47.551479],
			[urlIcon,-18.977098,47.532881],
			[urlIcon,-18.991809,47.542624],
			[urlIcon,-18.977326,47.534941]
		];
	
		for (var i = 0; i < nbrArret; i++) {
			var location = new google.maps.LatLng(liste_des_points[i][1], liste_des_points[i][2]);
			var marker = new google.maps.Marker({
                        position: location,
                        map: carte,
			//icon: urlIcon
			});
			var j = i + 1;
			marker.setTitle(j.toString());
			attachMessage(marker, i);
		}
		function attachMessage(marker, number) {
			var message = ["Restaurant Analakely","Restaurant Andoharanofotsy","Restaurant Tanjombato","Restaurant  Anosy","Restaurant Andrefan'Ambohijanahary","Restaurant Mandrimena","Restaurant Descours","Restaurant Fasan'ny Karana","Restaurant Ankadifotsy","Restaurant 67", "Restaurant Ankatso","Restaurant Ambany Atsimo","Restaurant Andoharanofotsy","Restaurant Malaza", "Retaurant By Pass"];
			var infowindow = new google.maps.InfoWindow({
				content: message[number],
				size: new google.maps.Size(50,50)
			});
			google.maps.event.addListener(marker, 'click', function() {
				infowindow.open(carte,marker);
			});
		}
	}
  </script>

 
    <body onload="initialiser()">
        <!--==============================header=================================-->
             <jsp:include page="header.jsp" />
               <jsp:include page="LOGIN/index.jsp" />
        <!--==============================Content=================================-->

        <div id="carteId" style="width:100%; height:100%"></div>
        
        
<footer>    
        <div class="container_12" >
        <div>
          <a href="" class="f_logo"><img src="images/lol.png" alt=""></a>
          <div class="copy">
          © 2013 | <a href="#">Privacy Policy</a> <br> Website   designed by <a href="http://store.templatemonster.com?aff=netsib1" rel="nofollow">diamsandco.com</a>
          </div>
        </div>
      </div>
</footer>
    <script>
      $(document).ready(function(){ 
         $(".bt-menu-trigger").toggle( 
          function(){
            $('.bt-menu').addClass('bt-menu-open'); 
          }, 
          function(){
            $('.bt-menu').removeClass('bt-menu-open'); 
          } 
        ); 
      }) 
    </script>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
   
    </body>
    
</html>
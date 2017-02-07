<header style="height: 229px"> 
    <link rel="icon" href="images/favicon.ico">
     <link rel="shortcut icon" href="images/favicon.ico" />
     
    
     <link rel="stylesheet" href="css/style_1.css">
      <link rel="stylesheet" href="css/style_2.css">
     
       <link rel="stylesheet" href="css/style2.css">
     
	 <!--Nouveau-->
     <script src="AJAX/ajaxFile.js"></script>
	  <!------------------>
     <script src="js/jquery.js"></script>
     <script src="js/jquery-migrate-1.1.1.js"></script>
     <script src="js/jquery.equalheights.js"></script>
     <script src="js/jquery.ui.totop.js"></script>
     <script src="js/jquery.easing.1.3.js"></script>
     <link href="themes/dist/css/bootstrap.min.css" rel="stylesheet">
     <link href="themes/assets/css/carousel.css" rel="stylesheet">
     
     <!--Menu-->
     <link rel="icon" href="images/favicon.ico">
     <link rel="shortcut icon" href="images/favicon.ico" />
     <link rel="stylesheet" href="css/touchTouch.css">
     <link rel="stylesheet" href="css/style.css">
     <script src="js/jquery.js"></script>
     <script src="js/jquery-migrate-1.1.1.js"></script>
     <script src="js/jquery.equalheights.js"></script>
     <script src="js/jquery.ui.totop.js"></script>
     <script src="js/jquery.tabs.min.js"></script>
     <script src="js/touchTouch.jquery.js"></script>
     <script src="js/jquery.easing.1.3.js"></script>
      <link rel="stylesheet" href="css/style3.css">
     
     <!----->
     
     <script type="text/javascript" src="js/move-top.js"></script>
     <div class="container_12" >
         
   <div class="grid_12"  style="margin-right: 0px"> 
     <div class="cart">	
         <a href="Deconnexion">
             <button type="button" class="btn btn-default">
                 <span class="glyphicon glyphicon-off"></span>
             </button>
         </a>
     </div>
       <div class="cart" style="margin-right: 10px">		
             <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModalLog">
                 <span class="glyphicon  glyphicon-user"></span>
             </button>
     </div>
       <div class="cart">		
          <span class="fa fa-shopping-cart my-cart-icon" style=" z-index: 999;"><span class="badge badge-notify my-cart-badge"></span></span>
     </div>
       <div id="imageUser" style="width: 100px;height: 100px;float: left">
           <img src="" height="100" width="100" alt=""/>
       </div>   
    <h1><a href="index.jsp"><img src="images/log.png" alt="Boo House"></a> </h1>
    <div class="menu_block">


        <nav id="bt-menu" class="bt-menu">
        <a href="#" class="bt-menu-trigger"><span>Menu</span></a>
        <ul>
         <li class="current bt-icon "><a href="index.jsp" >Accueil</a></li>
         <li class="bt-icon"><a href="map.jsp">Map</a></li>
         <li class="bt-icon"><a href="menu.jsp">Menu</a></li>
         <li class="bt-icon"><a href="ListeAmis.jsp">Chat</a></li>
         <li class="bt-icon"><a href="reservation.jsp">Reservation</a></li>
         <li class="bt-icon"><a href="apropos.jsp">Contacts</a></li>
        </ul>
      </nav>
    
 <div class="clear"></div>
</div>
    <div class="clear"></div>
    
   </div>
</div>
</header>


 <script src="js/bootstrap.js"></script>

  <script type="text/javascript">
  $(function () {

    var goToCartIcon = function($addTocartBtn){
      var $cartIcon = $(".my-cart-icon");
      var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
      $addTocartBtn.prepend($image);
      var position = $cartIcon.position();
      $image.animate({
        top: position.top,
        left: position.left
      }, 500 , "linear", function() {
        $image.remove();
      });
    }

    $('.my-cart-btn').myCart({
      classCartIcon: 'my-cart-icon',
      classCartBadge: 'my-cart-badge',
      affixCartIcon: true,
      checkoutCart: function(products) {
        $.each(products, function(){
          console.log(this);
        });
      },
      clickOnAddToCart: function($addTocart){
        goToCartIcon($addTocart);
      },
      getDiscountPrice: function(products) {
        var total = 0;
        $.each(products, function(){
          total += this.quantity * this.price;
        });
        return total * 1;
      }
    });

  });
  </script>

<script>
      $(document).ready(function(){
         $('.bt-menu').addClass('bt-menu-open');
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
    
    
    <!--==============================header=================================-->
            <jsp:include page="LOGIN/index.jsp" />
            <script type='text/javascript' src="js/jquery.mycart.js"></script>
        <!--==============================Content=================================-->

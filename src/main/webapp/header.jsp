<header> 
    <link rel="icon" href="images/favicon.ico">
     <link rel="shortcut icon" href="images/favicon.ico" />
     
     <link rel="stylesheet" href="css/style2.css">
     <link rel="stylesheet" href="css/style3.css">
     <link rel="stylesheet" href="css/style_1.css">
      <link rel="stylesheet" href="css/style_2.css">
      <link rel="stylesheet" href="css/style.css">
	 <!--Nouveau-->
	
	
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
     <!----->
     
     <script type="text/javascript" src="js/move-top.js"></script>
  <div class="container_12">
   <div class="grid_12"> 
     <div class="cart">		
          <span class="fa fa-shopping-cart my-cart-icon" style="position: absolute; background-color: inherit; z-index: 999;"><span class="badge badge-notify my-cart-badge"></span></span>
     </div>
    <h1><a href="index.html"><img src="images/logo.png" alt="Boo House"></a> </h1>
    <div class="menu_block">


    <nav id="bt-menu" class="bt-menu">
        <a href="#" class="bt-menu-trigger"><span>Menu</span></a>
        <ul>
          <li class="current bt-icon "><a href="index.html">Home</a></li>
         <li class="bt-icon"><a href="ADMIN/">about</a></li>
         <li class="bt-icon"><a href="index-2.html">Menu</a></li>
         <li class="bt-icon"><a href="index-3.html">Blog</a></li>
         <li class="bt-icon"><a href="index-4.html">Reservation</a></li>
         <li class="bt-icon"><a href="index-5.html">Contacts</a></li>
        </ul>
      </nav>
    
 <div class="clear"></div>
</div>
<div class="clear"></div>
          </div>
      </div>
</header>

<script type='text/javascript' src="js/jquery.mycart.js"></script>
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

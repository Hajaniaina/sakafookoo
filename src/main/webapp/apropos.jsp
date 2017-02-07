<!DOCTYPE html>
<html lang="en">
    <head>
    <title>Home</title>
    <meta charset="utf-8">
    <link rel="icon" href="images/favicon.ico">
    <link rel="shortcut icon" href="images/favicon.ico" />

    <link rel="stylesheet" href="css/style.css">

    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="themes/dist/js/bootstrap.min.js"></script>
    <script src="themes/assets/js/holder.js"></script>
    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.1.1.js"></script>
    <script src="js/jquery.equalheights.js"></script>
    <script src="js/jquery.ui.totop.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
	 
    <link href="themes/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="themes/assets/css/carousel.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style2.css">
     <script>
        $(document).ready(function(){
          $( ".block1" ).mouseover(function() {
            $(this).addClass( "blur" );
          });
          $( ".block1" ).mouseout(function() {
            $(this).removeClass( "blur" );
          });
          $().UItoTop({ easingType: 'easeOutQuart' });
        }) ;
     </script>
     <!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
         </a>
    <![endif]-->
    <!--[if lt IE 9]>
    
      <script src="js/html5shiv.js"></script>
      <link rel="stylesheet" media="screen" href="css/ie.css">
    <![endif]-->
    <!--[if lt IE 10]>
      <link rel="stylesheet" media="screen" href="css/ie1.css">
    <![endif]-->
    
     </head>
     <body class="page1">

<!--==============================header=================================-->
<jsp:include page="header.jsp" />


<!--==============================Content=================================-->

<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - December 02, 2013!</div>
  <div class="container_12">
    <div class="grid_8">
    <h3>A propos de Sakafookoo</h3>
      <img src="images/page2_img.jpg" alt="" class="img_inner fleft">
      <div class="extra_wrapper">
          <p class="col1"><span>Sakafookoo est en general un site de commandes de plats en ligne</span></p>
        <p class="col1">Tout restaurant l'utilisant peut etre contacte directement</p>
        <p>Vous pouvez tout de suite commander ce que vous voulez, ou meme des reservations sont disponibles </p>
      </div>
       Vous pouvez aussi recherchez facilement des restaurants a proximite grace a la map que nous fournissons
    </div>
    <div class="grid_4">
      <h3>Features</h3>
      <p class="col1 pad1">Magna non nunc tristiquencus. Aliquam nibh ante, egestas id dictum modo luctus libero. </p>
      <p class="pad1">Dolor sit amet, consectetureripiscingelit. Nullam consectetur orci se nullafaci.</p>
      <ul class="list">
        <li><a href="#">Curabitur Vellore Sit</a></li>
        <li><a href="#">Eu Consectetur Ligula</a></li>
        <li><a href="#">Dui eros Laoreet Sit amet </a></li>
        <li><a href="#">Estvel Dertolino</a></li>
        <li><a href="#">Commodo Venenatis Erossce</a></li>
        <li><a href="#">Adipiscing Quam id Risus </a></li>
        <li><a href="#">Sagittis  Consequat Lacus </a></li>
        <li><a href="#">Onterdumoin ut </a></li>
      </ul>
    </div>
    
  </div>
</div>

<!--==============================footer=================================-->

<footer>    
  <div class="container_12">
    <div class="grid_6 prefix_3">
      <a href="index.html" class="f_logo"><img src="images/lol.png" alt=""></a>
      <div class="copy">
      &copy; 2013 | <a href="#">Privacy Policy</a> <br> Website   designed by <a href="http://store.templatemonster.com?aff=netsib1" rel="nofollow">TemplateMonster.com</a>
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
      }) ;
    </script>
    
     <jsp:include page="LOGIN/index.jsp" />
</body>

</html>
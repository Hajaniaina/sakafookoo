<!DOCTYPE html>
<html lang="en">
     <head>
     <title>Menu</title>
     <meta charset="utf-8">
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
     <script>
        $(document).ready(function(){

          $().UItoTop({ easingType: 'easeOutQuart' });
         $('.gallery a.gal').touchTouch();
         
       }) 
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
      <script src="js/html5shiv.js"></script>
      <link rel="stylesheet" media="screen" href="css/ie1.css">
    <![endif]-->
    
     </head>
     <body  class="">

<!--==============================header=================================-->
<jsp:include page="header.jsp" />

<!--==============================Content=================================-->

<div class="content">
  <div class="container_12">
      
    <div class="grid_12" style="height: 50px;">
     
    </div>  
    
<div class="tab-head ">
    <nav class="nav-sidebar">
            <ul class="nav tabs ">
              <li class="active"><a href="#tab1" data-toggle="tab">Boisson</a></li>
              <li class=""><a href="#tab2" data-toggle="tab">Plat</a></li> 
              <li class=""><a href="#tab3" data-toggle="tab">Dessert</a></li>  
              <li class=""><a href="#tab4" data-toggle="tab">Entrée</a></li>
            </ul>
    </nav><br><br><hr>
    <div class=" tab-content tab-content-t ">
            <div class="tab-pane active text-style" id="tab1">
                    <div class=" con-w3l">
                        <!--tab 1-->
                       <%for (int i=0;i<4;i++){%>
                            <div class="col-md-3 m-wthree">
                                    <div class="col-m">
                                            <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                                                <img src="images/big3.jpg" class="img-responsive" alt="" height="100" width="100">
                                                    <div class="offer"><p><span>Voir</span></p></div>
                                            </a>
                                            <div class="mid-1">
                                                    <div class="women">
                                                            <h6><a href="single.html">Soya Chunks</a>(1 kg)</h6>							
                                                    </div>
                                                    <div class="mid-2">
                                                            <p ><label>$4.00</label><em class="item_price">$3.50</em></p>
                                                              <div class="block">
                                                                    <div class="starbox small ghosting"> </div>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                    </div>
                                                    <div class="add" >
                                                        <button id="boutonajout" class="btn btn-default my-cart-btn my-cart-b " style="" data-id="1" data-name="Moong" data-summary="summary 1" data-price="1.50" data-quantity="1" data-image="images/of.png">Ajouter au panier</button>
                                                    </div> <br><hr/>
                                                <div class="row" style="border: 1px solid #FFF">
                                                        <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up">(3)</span></div>
                                                        <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment">(0)</span></div>
                                                        <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div>
                                               </div>
                                            </div>
                                    </div>
                            </div>
                       <%}%>
                            <div class="clearfix"></div>
                     </div>
            </div>
        
        <!--tab2-->
            <div class="tab-pane  text-style" id="tab2">
                    <div class=" con-w3l">
                        <%for (int i=0;i<4;i++){%>
                            <div class="col-md-3 m-wthree">
                                    <div class="col-m">
                                            <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                                                    <img src="images/big4.jpg" class="img-responsive" alt="">
                                                    <div class="offer"><p><span>Voir</span></p></div>
                                            </a>
                                            <div class="mid-1">
                                                    <div class="women">
                                                            <h6><a href="single.html">Lays</a>(100 g)</h6>							
                                                    </div>
                                                    <div class="mid-2">
                                                            <p ><label>$1.00</label><em class="item_price">$0.70</em></p>
                                                              <div class="block">
                                                                    <div class="starbox small ghosting"> </div>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                    </div>
                                                    <div class="add" >
                                                        <button id="boutonajout" class="btn btn-default my-cart-btn my-cart-b " style="" data-id="1" data-name="Moong" data-summary="summary 1" data-price="1.50" data-quantity="1" data-image="images/of.png">Ajouter au panier</button>
                                                    </div><br><hr>
                                                    <div class="row" style="border: 1px solid #FFF">
                                                        <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up">(3)</span></div>
                                                        <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment">(0)</span></div>
                                                        <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div>
                                                    </div>
                                            </div>
                                    </div>
                            </div>
                     <%}%>       		  
            </div>
            </div>      
                <!--tab3-->
            <div class="tab-pane  text-style" id="tab3">
                    <div class=" con-w3l">
                        <%for (int i=0;i<4;i++){%>
                            <div class="col-md-3 m-wthree">
                                    <div class="col-m">
                                    <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                                                    <img src="images/big5.jpg" class="img-responsive" alt="">
                                                    <div class="offer"><p><span>Voir</span></p></div>
                                     </a>
                                            <div class="mid-1">
                                                    <div class="women">
                                                            <h6><a href="single.html">Banana</a>(6 pcs)</h6>							
                                                    </div>
                                                    <div class="mid-2">
                                                            <p ><label>$2.00</label><em class="item_price">$1.50</em></p>
                                                              <div class="block">
                                                                    <div class="starbox small ghosting"> </div>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                    </div>
                                                    <div class="add" >
                                                        <button id="boutonajout" class="btn btn-default my-cart-btn my-cart-b " style="" data-id="1" data-name="Moong" data-summary="summary 1" data-price="1.50" data-quantity="1" data-image="images/of.png">Ajouter au panier</button>
                                                    </div><br><hr>
                                                    <div class="row" style="border: 1px solid #FFF">
                                                        <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up">(3)</span></div>
                                                        <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment">(0)</span></div>
                                                        <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div>
                                                    </div>
                                            </div>
                                    </div>
                            </div>
                      <%}%>     		  
            </div>
            </div>
            <div class="tab-pane text-style" id="tab4">
                            <div class=" con-w3l">
                    <%for (int i=0;i<4;i++){%>
                            <div class="col-md-3 m-wthree">
                                    <div class="col-m">
                                            <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                                                    <img src="images/big6.jpg" class="img-responsive" alt="">
                                                    <div class="offer"><p><span>Voir</span></p></div>
                                            </a>
                                            <div class="mid-1">
                                                    <div class="women">
                                                            <h6><a href="single.html">Bread</a>(500 g)</h6>							
                                                    </div>
                                                    <div class="mid-2">
                                                            <p ><label>$1.00</label><em class="item_price">$0.80</em></p>
                                                              <div class="block">
                                                                    <div class="starbox small ghosting"> </div>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                    </div>
                                                    <div class="add" >
                                                        <button id="boutonajout" class="btn btn-default my-cart-btn my-cart-b " style="" data-id="1" data-name="Moong" data-summary="summary 1" data-price="1.50" data-quantity="1" data-image="images/of.png">Ajouter au panier</button>
                                                    </div><br><hr>
                                                    <div class="row" style="border: 1px solid #FFF">
                                                        <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up">(3)</span></div>
                                                        <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment">(0)</span></div>
                                                        <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div>
                                                     </div>
                                                
                                            </div>
                                    </div>
                            </div>
                       <%}%>
                            <div class="clearfix"></div>
                     </div>
            </div>
    </div>
</div>
  </div>
</div>
  <!--modal-->
  <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
            <div class="modal-content modal-info">
                    <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <div class="modal-body modal-spa">
                                    <div class="col-md-5 span-2">
                                        <h3>Pizza</h3>
                                        <div class="item">
                                                <img src="images/big6.jpg" class="img-responsive" alt="">
                                        </div>
                                    </div>
                                    <div class="col-md-7 span-1 ">
                                            
                                            <p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
                                            <div class="price_single">
                                              <span class="reducedfrom "><del>$10.00</del>$9.00</span>

                                             <div class="clearfix"></div>
                                            </div>
                                            <h4 class="quick">Quick Overview:</h4>
                                            <p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
                                             <div class="add-to">
                                                  <button class="btn btn-default btn-sm my-cart-btn my-cart-btn1 " data-id="2" data-name="Sunflower Oil" data-summary="summary 2" data-price="9.00" data-quantity="1" data-image="images/big1.jpg"> <span class="glyphicon glyphicon-shopping-cart"></span>Ajouter au panier</button>
                                                   <button type="button" class="btn btn-default btn-sm">
                                                    <span class="glyphicon glyphicon-comment"></span> Commentaires
                                                  </button>
                                             </div>
                                             
                                    </div>
                                    <div class="clearfix"> </div>
                            </div>
                    </div>
            </div>
    </div>
  <!--fin modal--->
<!--==============================footer=================================-->

<footer>    
  <div class="container_12">
    <div class="grid_6 prefix_3">
      <a href="index.html" class="f_logo"><img src="images/lol.png" alt=""><span></span></a>
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
      }) 
    </script>
</body>

</html>
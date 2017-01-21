<!DOCTYPE html>
<html lang="en">
    <head>
     <title>Home</title>
     <meta charset="utf-8">
     
     
    
      
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
    <a class="block1" >
    <img src="images/blur_img1.jpg" alt="">
    <span class="price">
        <span style="font-size: 30px;">Recherche de plats ou de restos</span>
        
        <span style="margin-top:10px;">
            <input type="text"  placeholder="nom du plat" id="rech">
            <input type="text" placeholder="prix minimum" id="rech">
            <input type="text" placeholder="prix maximum" id="rech">
            <input type="text" placeholder="a proximite de" id="rech">
            
            <input type="submit" class="btn btn-lg btn-default" style="border-radius: 8px !important;margin-top: 20px;border-radius: 3px;color: white;font-size: 16px;width:200px;height:40px;border-color:#d7d7b1;background-color:#d7d7b1;color:#5f5e4e;" value="Rechercher">
        </span>
        <strong></strong>
    </span>
    
    
  </a>
    
  
  <div class="mainTitle">
  	<div class="container">
  	<h1 style="color: black !important">Sakafoo'koo Menu</h1>
  	<p>
  	Sakafoo'koo est une application pour commander des plats sans se deplacer
  	</p>
  	</div>
	</div>

  <div class="container marketing">
      <!-- Three columns of text below the carousel -->
      <div class="row">
       
          <div class="col-lg-4">
               
              <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                  <img src="images/of.png" class="img-responsive" alt="">
                  <div class="offer"><p><span>Voir</span></p></div>
                   <img class="img-circle" src="themes/assets/images/nepali-momo.png" alt="Generic placeholder image">
              </a>        
              <h2>Nepalese MOMO</h2>
              
              <!--commetair-->
             <div id="formulaire" class="texte" style="display: none">
                 <form>
                    <div class="form-group">
                      <label for="comment">Comment:</label>
                      <textarea class="form-control" rows="5" id="comment"></textarea>
                    </div>
                     <button type="button" onclick=" javascript:afficher_cacher('desc','formulaire');" class="btn btn-primary">Enoyer</button>
              </form>
             </div>
              <!---fin commentaire-->
              
              <div id="desc"><p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies</p></div>
              <div class="add" >
                <button id="boutonajout" class="btn btn-default my-cart-btn my-cart-b " style="" data-id="1" data-name="Moong" data-summary="summary 1" data-price="1.50" data-quantity="1" data-image="images/of.png">Ajouter au panier</button>
             </div><br>
              <div class="row">
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up">(1)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment" onclick="javascript:afficher_cacher('desc','formulaire');">(1)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div>
                  
              </div>
        </div><!-- /.col-lg-4 -->
    
    <script type="text/javascript">
    
    </script>
        <div class="col-lg-4">
                <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                        <img src="images/of.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Voir</span></p></div>
                        <img class="img-circle" src="themes/assets/images/burger.png" alt="Generic placeholder image">
                 </a>
            <h2>Burger</h2>
             
            <!--commetair-->
             <div id="formulaire2" class="texte" style="display: none">
                 <form>
                    <div class="form-group">
                      <label for="comment">Comment:</label>
                      <textarea class="form-control" rows="5" id="comment"></textarea>
                    </div>
                     <button type="button" onclick=" javascript:afficher_cacher('desc2','formulaire2');" class="btn btn-primary">Enoyer</button>
              </form>
             </div>
              <!---fin commentaire-->
              
             <div id="desc2"> <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. </p></div>
            <div class="add" >
                <button id="boutonajout" class="btn btn-default my-cart-btn my-cart-b " style="" data-id="1" data-name="Moong" data-summary="summary 1" data-price="1.50" data-quantity="1" data-image="images/of.png">Ajouter au panier</button>
            </div><br>
             <div class="row">
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up">(3)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment" onclick="javascript:afficher_cacher('desc2','formulaire2');">(1)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div>
              </div>
        </div><!-- /.col-lg-4 -->
        
        
        <div class="col-lg-4">
             <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                        <img src="images/of.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Voir</span></p></div>
		  <img class="img-circle" src="themes/assets/images/gorkha-special-chicken.png" alt="Lam Tikka">
              </a>
          <h2>Gurkha Chicken</h2>
          
           <!--commetair-->
             <div id="formulaire3" class="texte" style="display: none">
                 <form>
                    <div class="form-group">
                      <label for="comment">Comment:</label>
                      <textarea class="form-control" rows="5" id="comment"></textarea>
                    </div>
                     <button type="button" onclick=" javascript:afficher_cacher('desc3','formulaire3');" class="btn btn-primary">Enoyer</button>
              </form>
             </div>
              <!---fin commentaire-->
              
              <div id="desc3"> <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. </p></div>
          <div class="add" >
                <button id="boutonajout" class="btn btn-default my-cart-btn my-cart-b " style="" data-id="1" data-name="Moong" data-summary="summary 1" data-price="1.50" data-quantity="1" data-image="images/of.png">Ajouter au panier</button>
          </div><br>
           <div class="row">
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up">(5)</span></div>
                   <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment" onclick="javascript:afficher_cacher('desc3','formulaire3');">(1)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div>
           </div>
        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
</div>

<!--==============================footer=================================-->

<div class="introSection">
		<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="cntr">We are launching complete online food order system for restaurent and takeaway Only at the rate <br>&pound;999 </h1>
			</div>
		</div>
		</div>
	</div>
	
<div class="container marketing">
    <h2 class="itemsTitle">Breakfast</h2>
	<div id="myCarousel1" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <div class="carousel-inner">
        <div class="item active">
         <div class="row">
        <div class="col-lg-4">
            <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                        <img src="images/of.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Voir</span></p></div>
                        <img src="themes/assets/images/salate.png" alt="Generic placeholder image">
                        <h4>Salades</h4>
            </a>
          <p><a class="btn btn-default" href="#" role="button">Ajouter au panier &raquo;</a></p>
           <div class="row" style="border: 0.5px solid #7db641;">
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up">(2)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment">(3)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div>
          </div>
        </div><!-- /.col-lg-4 -->
        
        
        <div class="col-lg-4">
             <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                        <img src="images/of.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Voir</span></p></div>
                        <img src="themes/assets/images/burger.png" alt="Generic placeholder image">
             </a>
          <h4>Hamburger</h4>
          <p><a class="btn btn-default" href="#" role="button">Ajouter au panier &raquo;</a></p>
           <div class="row" style="border: 1px solid #7db641">
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up">(1)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment">(2)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div>
           </div>
        </div><!-- /.col-lg-4 -->
        
        
        <div class="col-lg-4">
             <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                        <img src="images/of.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Voir</span></p></div>
                        <img src="themes/assets/images/drinks.png" alt="Generic placeholder image">
             </a>
          <h4>Jus naturel</h4>
          <p><a class="btn btn-default" href="#" role="button">Ajouter au panier &raquo;</a></p>
          
           <div class="row" style="border: 1px solid #7db641">
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up">(3)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment">(0)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div>
           </div>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
		 
      </div>
        <div class="item">
         <div class="row">
        <div class="col-lg-4">
             <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                        <img src="images/of.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Voir</span></p></div>
                        <img src="themes/assets/images/salate.png" alt="Generic placeholder image">
                        <h4>Salades</h4>
            </a>
          <p><a class="btn btn-default" href="#" role="button">Ajouter au panier &raquo;</a></p>
          
           <div class="row" style="border: 1px solid #7db641">
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up">(4)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment">(5)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div>
            </div>
        </div><!-- /.col-lg-4 -->
        
        
        <div class="col-lg-4">
             <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                        <img src="images/of.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Voir</span></p></div>
                        <img src="themes/assets/images/burger.png" alt="Generic placeholder image">
                        <h4>Hamburger</h4>
            </a>
          <p><a class="btn btn-default" href="#" role="button">Ajouter au panier &raquo;</a></p>
          
           <div class="row" style="border: 1px solid #7db641">
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up">(0)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment">(0)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div>
            </div>
        </div><!-- /.col-lg-4 -->
        
        
        <div class="col-lg-4">
             <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                        <img src="images/of.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Voir</span></p></div>
                        <img src="themes/assets/images/drinks.png" alt="Generic placeholder image">
                        <h4>Jus naturel</h4>
            </a>
          <p><a class="btn btn-default" href="#" role="button">Ajouter au panier &raquo;</a></p>
          
           <div class="row" style="border: 1px solid #7db641">
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up">(1)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment">(0)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div>
           </div>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
		 
        </div>
        <div class="item">
          <div class="row">
        <div class="col-lg-4">
             <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                        <img src="images/of.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Voir</span></p></div>
                        <img  src="themes/assets/images/salate.png" alt="Generic placeholder image">
                        <h4>Salades</h4>
            </a>
          <p><a class="btn btn-default" href="#" role="button">Ajouter au panier &raquo;</a></p>
           <div class="row" style="border: 1px solid #7db641">
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up">(0)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment">(1)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div>
           </div>
        </div><!-- /.col-lg-4 -->
        
        
        <div class="col-lg-4">
             <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                        <img src="images/of.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Voir</span></p></div>
                        <img  src="themes/assets/images/burger.png" alt="Generic placeholder image">
                        <h4>Hamburger</h4>
            </a>
          <p><a class="btn btn-default" href="#" role="button">Ajouter au panier &raquo;</a></p>
           <div class="row" style="border: 1px solid #7db641">
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up">(2)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment">(2)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div>
              </div>
        </div><!-- /.col-lg-4 -->
        
        
        <div class="col-lg-4" >
             <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                        <img src="images/of.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Voir</span></p></div>
                        <img  src="themes/assets/images/drinks.png" alt="Generic placeholder image">
                        <h4>Jus naturel</h4>
            </a>
          <p><a class="btn btn-default" href="#" role="button">Ajouter au panier &raquo;</a></p>
          
           <div class="row" style="border: 1px solid #7db641">
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up">(3)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment">(0)</span></div>
                    <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div>
           </div>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel1" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel1" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div><!-- /.carousel -->
</div>

<!--Modal-->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
<div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
                <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                </div>
                <div class="modal-body modal-spa">
                                <div class="col-md-5 span-2">
                                     <h3>Sunflower Oil</h3>
                                    <div class="item">
                                            <img src="images/big4.jpg" class="img-responsive" alt="">
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
                                                   <button class="btn btn-default btn-sm my-cart-btn my-cart-btn1 " data-id="2" data-name="Sunflower Oil" data-summary="summary 2" data-price="9.00" data-quantity="1" data-image="images/of1.png"> <span class="glyphicon glyphicon-shopping-cart"></span>Ajouter au panier</button>
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
<!--Fin modal-->	
	
<section id="contact" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h1 class="header-h">Dites ce que vous en-pensez :)</h1>
                    <p class="header-p">Vous pouvez laisser vos messages et vos commentaires ici .
                    <br>Merci de commenter  </p>
                </div>
            </div>
            <div class="row msg-row">
                <div class="col-md-4 col-sm-4 mr-15">
                    <div class="media-2">
                        <div class="media-left">
                            <div class="contact-phone bg-1 text-center"><span class="phone-in-talk fa fa-phone"></span></div>
                        </div>
                        <div class="media-body">
                            <h4 class="dark-blue regular">Numero mobile</h4>
                            <p class="light-blue regular alt-p">+261332918920 - <span class="contacts-sp">Phone</span></p>
                        </div>
                    </div>
                    <div class="media-2">
                        <div class="media-left">
                            <div class="contact-email bg-14 text-center"><span class="hour-icon fa fa-clock-o"></span></div>
                        </div>
                        <div class="media-body">
                            <h4 class="dark-blue regular">E-mail</h4>
                            <p class="light-blue regular alt-p">diamondrastier@gmail.com </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 col-sm-8">
                    <form action="" method="post" role="form" class="contactForm">
                    <div id="sendmessage">Your booking request has been sent. Thank you!</div>
                    <div id="errormessage"></div>
                    
                    <div class="col-md-12 contact-form">
                        <div class="form-group label-floating is-empty">
                            <textarea class="form-control" name="message" rows="5" rows="3" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                            <div class="validation"></div>
                        </div>
                        
                    </div>
                    <div class="col-md-12 btnpad">
                        <div class="contacts-btn-pad">
                            <button class="contacts-btn">Commentez</button>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>   
    <footer>    
      <div class="container_12">
        <div>
          <a href="index.html" class="f_logo"><img src="images/lol.png" alt=""></a>
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
    <script>
        function afficher_cacher(id, id2)
            {
                
                if(document.getElementById(id).style.visibility=="hidden")
                {
                    document.getElementById(id).style.visibility="visible";
                    document.getElementById(id2).style.display = 'none';
                    document.getElementById('bouton_'+id).innerHTML='Cacher le texte';
                }
                else
                {
                    document.getElementById(id).style.visibility="hidden";
                    document.getElementById(id2).style.display = 'block';
                    document.getElementById('bouton_'+id).innerHTML='Afficher le texte';
                }
                return true;
            }
    </script>
    <script>
           
            function hidecomment()
            {
                            
                document.getElementById('formulaire').style.display = 'none';
              
            }
        </script>
 </body>
</html>
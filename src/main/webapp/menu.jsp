<%@page import="javax.swing.JOptionPane"%>
<%@page import="objet.Categorie"%>
<%@page import="fonction.FonctionCategorie"%>
<%@page import="FonctionCommentaire.GetNombreCommentaire"%>
<%@page import="FonctionJaime.GetNombreJaime"%>
<%@page import="fonction.FonctionMenu"%>
<%@page import="objet.DetailMenu"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
     <head>
     <title>Menu</title>
     <meta charset="utf-8">
     <link rel="icon" href="images/favicon.ico">
     <link rel="shortcut icon" href="images/favicon.ico" />
     <link rel="stylesheet" href="css/touchTouch.css">
     <link rel="stylesheet" href="css/style.css">
    
     <script>
        $(document).ready(function(){

          $().UItoTop({ easingType: 'easeOutQuart' });
         $('.gallery a.gal').touchTouch();
         
       }) 
     </script>
    
     <%
           
            FonctionCategorie fcat=new FonctionCategorie();
            ArrayList<Categorie>listeCat=fcat.listeCategories();
            int userId=0;
            if(session.getAttribute("user")!=null)
            {
                userId=(int)session.getAttribute("user");
            }
     %>
    
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
               <% for(int j=0;j<listeCat.size();j++){%>
                     <li class=""><a href="#tab<%=j%>" data-toggle="tab" style="font-family: initial;font-size: 30px"><%=listeCat.get(j).getNomCategorie() %></a></li> 
             <%}%>
            </ul>
    </nav><br><br><hr>
    <div class=" tab-content tab-content-t ">
       <% int k=1;
           for(int j=0;j<listeCat.size();j++){%>
       <%
            //JOptionPane.showMessageDialog(null, listeCat.get(j).getIdCategorie());
            ArrayList<DetailMenu>listeMenu=new FonctionMenu().listerMenusParCategorie(listeCat.get(j).getIdCategorie());
           
       %>
            <div class="tab-pane active text-style" id="tab<%=j%>">
                    <div class=" con-w3l">
                        <!--tab 1-->
                       <%for (int i=0;i<4;i++){%>
                         <%
                            int nombreJaime=new GetNombreJaime().getNombreJaime(listeMenu.get(i).getProduit().getIdProduit()); 
                         %>
       
                        <form action="">
                            <div class="form-group">
                                <input type="hidden" name="userId"  id="userId<%=i%><%=j%>" value="<%=userId%>">
                                <input type="hidden" name="menuId" id="menuId<%=i%><%=j%>" value="<%= listeMenu.get(i).getProduit().getIdProduit() %>">
                                <input type="hidden" name="date" id="date<%=i%><%=j%>"  value="2013-12-21">
                            </div>
                      </form>
                            <div id="teste"></div>
                            <div class="col-md-3 m-wthree">
                                    <div class="col-m">
                                        <div class="women" style="font-size: 10px; ">
                                            <h4><%=listeMenu.get(i).getNomMenu() %></h4>							
                                        </div><br>
                                        <a href="#" data-toggle="modal" data-target="#myModal1<%=i%><%=j%>" class="offer-img">
                                            <img src="images/<%=listeMenu.get(i).getProduit().getImage() %>" class="img-responsive" alt="" height="100" width="100">
                                                    <div class="offer"><p><span>Voir</span></p></div>
                                        </a>
                                            <div class="mid-1">
                                                    
                                                <div class="women" style=" background-color: #FFF ">
                                                    <h4 style="color: black;font-family: inherit;font-size: 20px "><%=listeMenu.get(i).getProduit().getDesignation() %></h4>							
                                                    </div>
                                                    <div class="mid-2">
                                                        <p ><label></label><em class="item_price"><h2><%=listeMenu.get(i).getProduit().getPrix() %> Ar</h2></em></p>
                                                              <div class="block">
                                                                    <div class="starbox small ghosting"> </div>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                    </div>
                                                    <div class="add" >
                                                        <button id="boutonajout" class="btn btn-default my-cart-btn my-cart-b " style="" data-id="<%=listeMenu.get(i).getProduit().getIdProduit() %>" data-name="<%=listeMenu.get(i).getProduit().getDesignation() %>" data-summary="summary <%=listeMenu.get(i).getProduit().getIdProduit() %>" data-price="<%=listeMenu.get(i).getProduit().getPrix() %>" data-quantity="1" data-image="images/of.png">Ajouter au panier</button>
                                                    </div> <br><hr/>
                                                
                                                   
                                                    <button id="aime<%=i%><%=j%>"> <div class="col-sm-2" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up" id="jaime<%=i%><%=j%>">(<%=nombreJaime%>)</span></div></button>
                                                    <a href="Partage?userId=<%=userId%> &image=<%= listeMenu.get(i).getProduit().getImage() %>"> <button id="shaire<%=i%><%=j%>">  <div class="col-sm-2" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div></button></a>
                                                    <div class="col-sm-2"></div>
                                                    <div class="col-sm-2"></div>
                                                    <div class="col-sm-2"></div>
                                                    <div class="col-sm-2"></div>
                                            </div>
                                    </div>
                                                    <div id="msCon<%=i%><%=j%>"></div>
                            </div>
                                                    
            <!--modal-->
  <div class="modal fade" id="myModal1<%=i%><%=j%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
            <div class="modal-content modal-info">
                    <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <div class="modal-body modal-spa">
                                    <div class="col-md-5 span-2">
                                        <h2><%= listeMenu.get(i).getNomMenu() %></h2>
                                        <div class="item">
                                                <img src="images/<%=listeMenu.get(i).getProduit().getImage()%>" class="img-responsive" alt="">
                                        </div>
                                    </div>
                                    <div class="col-md-7 span-1 ">
                                            
                                        <h4> <p class="in-para"><%=listeMenu.get(i).getProduit().getDesignation() %></p></h4>
                                            <div class="price_single">
                                              <span class="reducedfrom "><strong>Prix:</strong><%=listeMenu.get(i).getProduit().getPrix() %></span>

                                             <div class="clearfix"></div>
                                            </div>
                                            <h4 class="quick">Restaurant:</h4>
                                            <p class="quick_desc">
                                            <h4> <%=listeMenu.get(i).getResto().getNomResto() %></h4><hr>
                                            <h4> <%=listeMenu.get(i).getResto().getDescription() %></h4><hr>
                                            
                                            </p>
                                             <div class="add-to">
                                                   <button id="boutonajout" class="btn btn-default my-cart-btn my-cart-b " style="" data-id="<%=listeMenu.get(i).getProduit().getIdProduit() %>" data-name="<%=listeMenu.get(i).getProduit().getDesignation() %>" data-summary="summary <%=listeMenu.get(i).getProduit().getIdProduit() %>" data-price="<%=listeMenu.get(i).getProduit().getPrix() %>" data-quantity="1" data-image="images/of.png">Ajouter au panier</button>
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
     <script>
      $(document).ready(function(){
          
		$("#aime<%=i%><%=j%>").click(function()
		{
			if(document.getElementById("userId<%=i%><%=j%>").value=='0')
                        {
                            document.getElementById("msCon<%=i%><%=j%>").innerHTML="Veiller connecter!";
                        }
                        $.ajax({
			   url : 'Vote',
			   type : 'GET',
			   data :  'userId='+document.getElementById('userId<%=i%><%=j%>').value+'&menuId='+document.getElementById('menuId<%=i%><%=j%>').value+'&daty='+document.getElementById('date<%=i%><%=j%>').value,
			   dataType:'html',
                            success : function(responseText)
                             {
                                   $('#jaime<%=i%><%=j%>').text(responseText);
                             },
			   error : function(resultat, statut, erreur)
			   { 
				 
			   },
			   complete : function(resultat, statut)
			  {	
                              
			  }
			});
		    });
		});
                
             
  </script>
                       <%}%>
                            
                     </div>
            </div>
     <%}%>
        
            
                
                            
    </div>
</div>
  </div>
                            
</div>
  
<!--==============================footer=================================-->

<footer>    
  <div class="container_12">
    <div class="grid_6 prefix_3">
      <a href="index.html" class="f_logo"><img src="images/lol.png" alt=""><span></span></a>
      <div class="copy">
          Co&Diams
      </div>
    </div>
  </div>
     <!--==============================header=================================-->
            <jsp:include page="LOGIN/index.jsp" />

        <!--==============================Content=================================-->

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
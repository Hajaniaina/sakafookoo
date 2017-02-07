<%@page import="FonctionRecherche.Find"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="FonctionCommentaire.GetNombreCommentaire"%>
<%@page import="FonctionJaime.GetNombreJaime"%>
<%@page import="fonction.FonctionMenu"%>
<%@page import="objet.DetailMenu"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="fr">
    <head>
     <title>Home</title>
     <meta charset="utf-8">
     <script src="jquery.js"
        <script src="AJAX/ajaxFile.js" type="text/javascript"></script>
        <script src="AJAX/jquery.js" type="text/javascript"></script>
    
     </head>
     <body class="page1">
         
   <%
   JOptionPane.showMessageDialog(null, "teste");
       ArrayList<DetailMenu>listeMenu=new FonctionMenu().listerMenus();
       
       int userId=0;
       String mssgRech="";
       if(session.getAttribute("user")!=null)
       {
           userId=(int)session.getAttribute("user");
       }
         
         String msg="";
         if(request.getParameter("erreur")!=null)
         {
             msg=request.getParameter("erreur");
         }
       if(request.getParameter("rech")!=null)
       {
           String nomPlat=request.getParameter("nomP");
           String pMin=request.getParameter("pMin");
           String pMax=request.getParameter("PMax");
           listeMenu=new Find().find(nomPlat, pMin, pMax);
            mssgRech="Resultat de recherche <a href='index.jsp?idVoirTous=1'><strong>Voir tous</strong></a>";
           if(listeMenu.size()<=0)
           {
               listeMenu=new FonctionMenu().listerMenus();
               mssgRech="Pas de resultat associé a votre recherche";
           }
       }
   %>

<!--==============================header=================================-->
<jsp:include page="header.jsp" />

<!--==============================Content=================================-->
<div id="msg" style="margin-left: 100px;color: white; font-family:initial;font-size: 25px"><strong><%= msg %></strong></div>
<div class="content" ><div ></div>
   <a class="block1" >
    <img src="images/blur_img1.jpg" alt="">
    <span class="price" style="width:900px;height:180px;">
        <span style="font-size: 30px;">Recherche des plats ou de restos</span>
        
        <span style="margin-top:10px;">
            <form action="index.jsp" method="get">
            <input type="text"  placeholder="nom du plat" id="rech" name="nomP" >
            <input type="text" placeholder="prix minimum" id="rech" name="pMin">
            <input type="text" placeholder="prix maximum" id="rech" name="PMax">
            <input type="submit" value="Ok" name="rech" id="rech" style="width: 50px;color: red">
            </form>
        </span>
        <strong></strong>
    </span>
    
    
  </a>
    <div id="resultSearch">
        
    </div>

  <div class="container marketing">
      
     
      <!-- Three columns of text below the carousel -->
      <div class="row">
          <div id="resulSearc" style="font-size: 20px;margin: 0 auto">
          <h2><%=mssgRech %></h2>
          </div><br>
       <% for(int i=0;i<3;i++){%>
       <%
          int nombreJaime=new GetNombreJaime().getNombreJaime(listeMenu.get(i).getProduit().getIdProduit());
          int nombreCommentaire=new GetNombreCommentaire().getNombreCommentaire(listeMenu.get(i).getProduit().getIdProduit());
          //JOptionPane.showMessageDialog(null, listeMenu.get(i).getProduit().getIdroduit());
       %>
       
          <div class="col-lg-4">
               
              <a href="#" data-toggle="modal" data-target="#myModal1<%=i%>" class="offer-img">
                  <img src="images/of.png" class="img-responsive" alt="">
                  <div class="offer"><p><span>Voir</span></p></div>
                  <img class="img-circle" src="images/<%=listeMenu.get(i).getProduit().getImage().trim() %>" alt="Generic placeholder image" height="200" width="150">
              </a>        
              <h2><%=listeMenu.get(i).getProduit().getPrix()%> AR</h2>
              
              <!--commetair-->
             <div id="formulaire<%=i%>" class="texte" style="display: none">
                 <form action="">
                    <div class="form-group">
                        <input id="userId<%=i%>" type="hidden" name="userId" value="<%=userId%>">
                        <input id="menuId<%=i%>" type="hidden" name="menuId" value="<%=listeMenu.get(i).getProduit().getIdProduit() %>">
                        <input  id="daty<%=i%>" type="hidden" name="date" value="2012-20-10">
                      <label for="comment">Comment:</label>
                      <textarea class="form-control" rows="5" name="" id="texte<%=i%>"></textarea>
                    </div>
                     <button type="button" onclick=" javascript:afficher_cacher('desc<%=i%>','formulaire<%=i%>'),comment(menuId,userId,comment,daty,<%=i%>,'Commentaire.jsp',comment);" class="btn btn-primary" id="b<%=i%>">Enoyer</button>
                     
              </form>
             </div>
              <!---fin commentaire-->
              
              <div id="desc<%=i%>"><p><%=listeMenu.get(i).getProduit().getDesignation()%></p></div>
              <div class="add" >
                  <button id="boutonajout" class="btn btn-default my-cart-btn my-cart-b " style="" data-id="<%=listeMenu.get(i).getProduit().getIdProduit()%>" data-name=" <%= listeMenu.get(i).getProduit().getDesignation() %>" data-summary="summary <%=i%>" data-price="<%=listeMenu.get(i).getProduit().getPrix()%>" data-quantity="1" data-image="images/of.png">Ajouter au panier</button>
             </div><br>
              <div class="row">
                  <button id="aime<%=i%>"> <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up" id="test<%=i%>">(<%=nombreJaime%>)</span></div></button>
                  <button  id="comment<%=i%>" onclick="javascript:afficher_cacher('desc<%=i%>','formulaire<%=i%>');">  <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment" id="testCom<%=i%>">(<%=nombreCommentaire%>)</span></div></button>
                  <a href="Partage?userId=<%=userId%> &image=<%=listeMenu.get(i).getProduit().getImage() %>"> <button  id="shaire<%=i%>">  <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div></button></a>
                  <p id="VoirCommentaire<%=i%>"><a href="TousComs?idProduit=<%=listeMenu.get(i).getProduit().getIdProduit()%>">Tous</a>
                  <div id="msCon<%=i%>"></div>
                      
                  </p>
                  
              </div>
    <script>
 
	$(document).ready(function(){
		$("#b<%=i%>").click(function()
		{
                    if(document.getElementById("userId<%=i%>").value=='0')
                    {
                        document.getElementById("msCon<%=i%>").innerHTML="Veiller connecter!";
                    }
			
			$.ajax({
			   url : 'Comment',
			   type : 'GET',
			   data :  'userId='+document.getElementById('userId<%=i%>').value+'&menuId='+document.getElementById('menuId<%=i%>').value+'&texte='+document.getElementById('texte<%=i%>').value,
			   dataType:'html',
                            success : function(responseText)
                            {
                                   //alert('teste');
                                   $('#testCom<%=i%>').text(responseText);
                            },
			   error : function(resultat, statut, erreur)
			   { 
				 console.log(erreur);
                                 
			   },
			   complete : function(resultat, statut)
			  {							
			  }
			});
		    });
		});
            
            
       $(document).ready(function(){
		$("#aime<%=i%>").click(function()
		{
			if(document.getElementById("userId<%=i%>").value=="0")
                        {
                            document.getElementById("msCon<%=i%>").innerHTML="Veiller connecter";
                        }
			
			$.ajax({
			   url : 'Vote',
			   type : 'GET',
			   data :  'userId='+document.getElementById('userId<%=i%>').value+'&menuId='+document.getElementById('menuId<%=i%>').value+'&daty='+document.getElementById('daty<%=i%>').value,
			   dataType:'html',
                            success : function(responseText)
                            {
                                    //alert(responseText);
                                   $('#test<%=i%>').text(responseText);
                            },
			   error : function(resultat, statut, erreur)
			   { 
				 console.log(erreur);
			   },
			   complete : function(resultat, statut)
			  {							
			  }
			});
		    });
		});		
  </script>
        </div><!-- /.col-lg-4 -->
        
        
         <!--Modal-->
        <div class="modal fade" id="myModal1<%=i%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
        <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
                <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                </div>
            
                <div class="modal-body modal-spa">
                                <div class="col-md-5 span-2">
                                     <h2><%= listeMenu.get(i).getNomMenu() %></h2><br>
                                    <div class="item">
                                            <img src="images/<%=listeMenu.get(i).getProduit().getImage().trim() %>" class="img-responsive" alt="">
                                    </div>
                                </div>
                                <div class="col-md-7 span-1 ">
                                      
                                    <p class="in-para">
                                        <strong> <%= listeMenu.get(i).getProduit().getDesignation() %></strong>
                                    </p>
                                        <div class="price_single">
                                         
                                            <div id="desc">
                                                Restaurant:
                                                <h2>
                                                   <%= listeMenu.get(i).getResto().getNomResto()%> 
                                                </h2>
                                               
                                                <%= listeMenu.get(i).getResto().getDescription() %><br>
                                               
                                            </div>
                                          <div class="clearfix">
                                              <span class="reducedfrom "><Strong><%=listeMenu.get(i).getProduit().getPrix()%></Strong> Ar</span>
                                          </div>
                                        </div>
                                       
                                         <div class="add-to">
                                                    <button id="boutonajout" class="btn btn-default my-cart-btn my-cart-b " style="" data-id="<%=i%>" data-name=" <%= listeMenu.get(i).getProduit().getDesignation() %>" data-summary="summary <%=i%>" data-price="<%=listeMenu.get(i).getProduit().getPrix()%>" data-quantity="1" data-image="images/of.png">Ajouter au panier</button>
                                                        <a href="TousComs?idProduit=<%=listeMenu.get(i).getProduit().getIdProduit()%>">
                                                         <button type="button" class="btn btn-default btn-sm">
                                                         <span class="glyphicon glyphicon-comment"></span> Commentaires
                                                       </button>
                                                    </a>
                                         </div>
                                </div>
                                <div class="clearfix"> </div>
                        </div>
                </div>
        </div>
    </div>
    <!--Fin modal-->
        
        
        
        <%}%>
    
</div><!-- /.row -->
</div>

<!--==============================footer=================================-->
<%
      ArrayList<DetailMenu>listeMenu2=new FonctionMenu().listerMenus();
%>
<div class="introSection" style="height: 10px">		
</div>	
<div class="container marketing">
    <h2 class="itemsTitle">Menu</h2>
	<div id="myCarousel1" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <div class="carousel-inner">
        <div class="item active">
         <div class="row">
      <% for(int i=0;i<3;i++){%>
      <!--Commentaire-->
       
      <%
          int nombreJaime1=new GetNombreJaime().getNombreJaime(listeMenu2.get(i).getProduit().getIdProduit());
          int nombreCommentaire2=new GetNombreCommentaire().getNombreCommentaire(listeMenu2.get(i).getProduit().getIdProduit());
          //JOptionPane.showMessageDialog(null, listeMenu.get(i).getProduit().getIdroduit());
       %>
       
     <!--fin Commentaire-->     
        <div class="col-lg-4">
            <a href="#" data-toggle="modal" data-target="#myModal<%=i%>" class="offer-img">
                        <img src="images/of.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Voir</span></p></div>
                        <img src="images/<%=listeMenu2.get(i).getProduit().getImage().trim() %>" alt="Generic placeholder image" height="150" width="150">
                        <h4><%= listeMenu2.get(i).getProduit().getDesignation() %></h4>
                        <div class="clearfix">
                            <span class="reducedfrom "><Strong><%=listeMenu2.get(i).getProduit().getPrix()%></Strong> Ar</span>
                        </div>
            </a>
       <div id="formulaire1<%=i%>" class="texte" style="display: none">
                 <form action="">
                    <div class="form-group">
                        <input  type="hidden" name="userId" id="userId2<%=i%>" value="<%=userId%>">
                        <input  type="hidden" name="menuId" id="menuId2<%=i%>" value="<%=listeMenu2.get(i).getProduit().getIdProduit() %>">
                        <input  type="hidden" name="date" id="date2<%=i%>"  value="date">
                      <label for="comment">Comment:</label>
                      <textarea class="form-control" rows="5"  name="" id="texte1<%=i%>"></textarea>
                    </div>
                     <button type="button" onclick=" javascript:afficher_cacher('desc1<%=i%>','formulaire1<%=i%>');" class="btn btn-primary" id="b2<%=i%>">Enoyer</button>
              </form>
      </div><br>
      <button id="boutonajout" class="btn btn-default my-cart-btn my-cart-b " style="" data-id="<%=listeMenu2.get(i).getProduit().getIdProduit()%>" data-name=" <%= listeMenu2.get(i).getProduit().getDesignation() %>" data-summary="summary 1" data-price="<%=listeMenu2.get(i).getProduit().getPrix()%>" data-quantity="1" data-image="images/of.png">Ajouter au panier</button><br>
           <div id="desc1<%=i%>"></div>
           <div class="row">
                    <button id="aime2<%=i%>"> <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up" id="nbJ<%=i%>">(<%= nombreJaime1 %>)</span></div></button>
                    <button id="comment2<%=i%>" onclick="javascript:afficher_cacher('desc1<%=i%>','formulaire1<%=i%>');">  <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment" id="nbC<%=i%>">(<%= nombreCommentaire2 %>)</span></div></button>
                    <a href="Partage?userId=<%=userId%>&image=<%=listeMenu2.get(i).getProduit().getImage() %>"><button id="shaire2<%=i%>">  <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div></button></a>
                    <p id="VoirCommentaire1<%=i%>"><a href="TousComs?idProduit=<%=listeMenu2.get(i).getProduit().getIdProduit()%>">Tous</a>
                  <div id="msCon1<%=i%>"></div>
                      
                  </p>
          </div>
        </div><!-- /.col-lg-4 -->
        
        <!--Modal-->
        <div class="modal fade" id="myModal<%=i%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
        <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
                <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                </div>
                <div class="modal-body modal-spa">
                                <div class="col-md-5 span-2">
                                  
                                    <div class="item">
                                          <h2><%= listeMenu2.get(i).getProduit().getDesignation() %></h2><hr><br>
                                            <img src="images/<%=listeMenu2.get(i).getProduit().getImage().trim()%>" class="img-responsive" alt="">
                                    </div>
                                </div>
                                <div class="col-md-7 span-1 ">
                                       
                                        <p class="in-para"> 
                                            Restaurant:<br>
                                        <h2><strong><%= listeMenu2.get(i).getResto().getNomResto() %></strong></h2>:<br>
                                        Vous pouvez le trouver : <%= listeMenu2.get(i).getResto().getDescription() %>
                                       
                                        </p>
                                        <div class="price_single">
                                            Prix:
                                          <div class="clearfix">
                                              <span class="reducedfrom "><Strong><%=listeMenu2.get(i).getProduit().getPrix()%></Strong> Ar</span>
                                          </div>

                                         <div class="clearfix"></div>
                                        </div>
                                        
                                         <div class="add-to">
                                            <button id="boutonajout" class="btn btn-default my-cart-btn my-cart-b " style="" data-id="<%=listeMenu2.get(i).getProduit().getIdProduit()%>" data-name=" <%= listeMenu2.get(i).getProduit().getDesignation() %>" data-summary="summary 1" data-price="<%=listeMenu2.get(i).getProduit().getPrix()%>" data-quantity="1" data-image="images/of.png">Ajouter au panier</button>
                                                  <a href="TousComs?idProduit=<%=listeMenu2.get(i).getProduit().getIdProduit()%>">  
                                                    <button type="button" class="btn btn-default btn-sm">
                                                     <span class="glyphicon glyphicon-comment"></span> Commentaires
                                                   </button>
                                                  </a>
                                         </div>
                                </div>
                                <div class="clearfix"> </div>
                        </div>
                </div>
        </div>
    </div>
        
        <script>
 
	$(document).ready(function(){
		
		
		$("#b2<%=i%>").click(function()
		{
			if(document.getElementById("userId2<%=i%>").value=='0')
                        {
                            document.getElementById("msCon1<%=i%>").innerHTML="Veiller connecter!";
                        }
			
			$.ajax({
			   url : 'Comment',
			   type : 'GET',
			   data :  'userId='+document.getElementById('userId2<%=i%>').value+'&menuId='+document.getElementById('menuId2<%=i%>').value+'&daty='+document.getElementById('date2<%=i%>').value+'&texte='+document.getElementById('texte1<%=i%>').value,
			   dataType:'html',
                            success : function(responseText)
                            {
                                $('#nbC<%=i%>').text(responseText);
                            },
			   error : function(resultat, statut, erreur)
			   { 
				 console.log(erreur);
			   },
			   complete : function(resultat, statut)
			  {							
			  }
			});
		    });
		});
            
            
       $(document).ready(function(){
		$("#aime2<%=i%>").click(function()
		{
			if(document.getElementById("userId2<%=i%>").value=='0')
                        {
                            document.getElementById("msCon1<%=i%>").innerHTML="Veuiller connecter!";
                        }
			
			$.ajax({
			   url : 'Vote',
			   type : 'GET',
			   data :  'userId='+document.getElementById('userId2<%=i%>').value+'&menuId='+document.getElementById('menuId2<%=i%>').value+'&texte='+document.getElementById('texte1<%=i%>').value,
			   dataType:'html',
                            success : function(responseText)
                            {
                                    $('#nbJ<%=i%>').text(responseText);
                            },
			   error : function(resultat, statut, erreur)
			   { 
				 console.log(erreur);
			   },
			   complete : function(resultat, statut)
			  {							
			  }
			});
		    });
		});
                
                
  </script>
    <!--Fin modal-->

      <%}%> 
      </div><!-- /.row -->
		 
      </div>
        <div class="item">
         <div class="row">
       <%
             ArrayList<DetailMenu>listeMenu3=new FonctionMenu().listerMenus();
        %>
      <% for(int i=0;i<3;i++){%>
      
       <%
          int nombreJaime2=new GetNombreJaime().getNombreJaime(listeMenu3.get(i).getProduit().getIdProduit());
          int nombreCommentaire2=new GetNombreCommentaire().getNombreCommentaire(listeMenu3.get(i).getProduit().getIdProduit());
          //JOptionPane.showMessageDialog(null, listeMenu.get(i).getProduit().getIdroduit());
       %>
     
        <div class="col-lg-4">
             <a href="#" data-toggle="modal" data-target="#myModal2<%=i%>" class="offer-img">
                        <img src="images/of.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Voir</span></p></div>
                        <img src="images/<%=listeMenu3.get(i).getProduit().getImage().trim() %>" alt="Generic placeholder image" height="150" width="150">
                        <h4><%= listeMenu3.get(i).getProduit().getDesignation() %></h4>
                        <div class="clearfix">
                            <span class="reducedfrom "><Strong><%=listeMenu3.get(i).getProduit().getPrix()%></Strong> Ar</span>
                        </div>
            </a>
                        
                         <!--Commentaire-->
      <div id="formulaire2<%=i%>" class="texte" style="display: none">
                 <form action="jj">
                    <div class="form-group">
                        <input type="hidden" name="userId" id="userId3<%=i%>" value="<%=userId%>">
                        <input type="hidden" name="menuId" id="menuId3<%=i%>" value="<%=listeMenu3.get(i).getProduit().getIdProduit() %>">
                        <input type="hidden" name="date" id="date3<%=i%>" value="date">
                      <label for="comment">Comment:</label>
                      <textarea class="form-control" rows="5"  name="" id="texte2<%=i%>"></textarea>
                    </div>
                     <button type="button" onclick=" javascript:afficher_cacher('desc2<%=i%>','formulaire2<%=i%>');" class="btn btn-primary" id="b3<%=i%>">Enoyer</button>
              </form>
             
      </div><br>
      
     <!--fin Commentaire-->  
     <button id="boutonajout" class="btn btn-default my-cart-btn my-cart-b " style="" data-id="<%=listeMenu3.get(i).getProduit().getIdProduit()%>" data-name=" <%= listeMenu3.get(i).getProduit().getDesignation() %>" data-summary="summary 2<%=i%>" data-price="<%=listeMenu3.get(i).getProduit().getPrix()%>" data-quantity="1" data-image="images/of.png">Ajouter au panier</button><br>
          <div id="desc2<%=i%>"></div>
           <div class="row">
                    <button id="aime3<%=i%>"> <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up" id="jaimeN<%=i%>">(<%=nombreJaime2%>)</span></div></button>
                    <button id="comment3<%=i%>" onclick="javascript:afficher_cacher('desc2<%=i%>','formulaire2<%=i%>');">  <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment" id="commentN<%=i%>">(<%=nombreCommentaire2%>)</span></div></button>
                    <a href="Partage?userId=<%=userId%>&image=<%=listeMenu3.get(i).getProduit().getImage() %>"> <button id="shaire3<%=i%>">  <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div></button></a>
                    <p id="VoirCommentaire2<%=i%>"><a href="TousComs?idProduit=<%=listeMenu3.get(i).getProduit().getIdProduit()%>">Tous</a>
                         <div id="msCon2<%=i%>"></div>
                      
                  </p>
           </div>
        </div><!-- /.col-lg-4 -->
        
         <!--Modal-->
        <div class="modal fade" id="myModal2<%=i%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
        <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
                <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                </div>
                <div class="modal-body modal-spa">
                                <div class="col-md-5 span-2">
                                  
                                    <div class="item">
                                          <h2><%= listeMenu3.get(i).getProduit().getDesignation() %></h2><hr><br>
                                            <img src="images/<%=listeMenu3.get(i).getProduit().getImage().trim() %>" class="img-responsive" alt="">
                                    </div>
                                </div>
                                <div class="col-md-7 span-1 ">
                                       
                                        <p class="in-para"> 
                                            Restaurant:<br>
                                        <h2><strong><%= listeMenu3.get(i).getResto().getNomResto() %></strong></h2>:<br>
                                        Vous pouvez le trouver : <%= listeMenu3.get(i).getResto().getDescription() %>
                                       
                                        </p>
                                        <div class="price_single">
                                            Prix:
                                          <div class="clearfix">
                                              <span class="reducedfrom "><Strong><%=listeMenu3.get(i).getProduit().getPrix()%></Strong> Ar</span>
                                          </div>

                                         <div class="clearfix"></div>
                                        </div>
                                        
                                         <div class="add-to">
                                                  <button id="boutonajout" class="btn btn-default my-cart-btn my-cart-b " style="" data-id="<%=listeMenu3.get(i).getProduit().getIdProduit()%>" data-name=" <%= listeMenu3.get(i).getProduit().getDesignation() %>" data-summary="summary 2<%=i%>" data-price="<%=listeMenu3.get(i).getProduit().getPrix()%>" data-quantity="1" data-image="images/of.png">Ajouter au panier</button>
                                                 <a href="TousComs?idProduit=<%=listeMenu3.get(i).getProduit().getIdProduit()%>">   
                                                    <button type="button" class="btn btn-default btn-sm">
                                                     <span class="glyphicon glyphicon-comment"></span> Commentaires
                                                   </button>
                                                 </a>
                                         </div>
                                </div>
                                <div class="clearfix"> </div>
                        </div>
                </div>
        </div>
    </div>
        
    <!--Fin modal-->
    
     <script>
 
	$(document).ready(function(){
		
		
		$("#b3<%=i%>").click(function()
		{
			if(document.getElementById("userId3<%=i%>").value=='0')
                        {
                            document.getElementById("msCon2<%=i%>").innerHTML="Veiller connecter!";
                        }
			
			$.ajax({
			   url : 'Comment',
			   type : 'GET',
			   data :  'userId='+document.getElementById('userId3<%=i%>').value+'&menuId='+document.getElementById('menuId3<%=i%>').value+'&daty='+document.getElementById('date3<%=i%>').value+'&texte='+document.getElementById('texte2<%=i%>').value,
			   dataType:'html',
                            success : function(responseText)
                            {
                                    $('#commentN<%=i%>').text(responseText);
                            },
			   error : function(resultat, statut, erreur)
			   { 
				 console.log(erreur);
			   },
			   complete : function(resultat, statut)
			  {							
			  }
			});
		    });
		});
            
            
       $(document).ready(function(){
		$("#aime3<%=i%>").click(function()
		{
			if(document.getElementById("userId3<%=i%>").value=='0')
                        {
                            document.getElementById("msCon2<%=i%>").innerHTML="Veiller connecter!";
                        }
			
			$.ajax({
			   url : 'Vote',
			   type : 'GET',
			   data :  'userId='+document.getElementById('userId3<%=i%>').value+'&menuId='+document.getElementById('menuId3<%=i%>').value+'&daty='+document.getElementById('date3<%=i%>').value,
			   dataType:'html',
                            success : function(responseText)
                            {
                                    $('#jaimeN<%=i%>').text(responseText);
                            },
			   error : function(resultat, statut, erreur)
			   { 
				 console.log(erreur);
			   },
			   complete : function(resultat, statut)
			  {							
			  }
			});
		    });
		});
                
                
                
  </script>
        <%}%>
      
      </div><!-- /.row -->
		 
        </div>
        <div class="item">
          <div class="row">
              <%
                ArrayList<DetailMenu>listeMenu4=new FonctionMenu().listerMenus();
                %>
       <% for(int i=0;i<3;i++){%>
       
        <%
          int nombreJaime3=new GetNombreJaime().getNombreJaime(listeMenu4.get(i).getProduit().getIdProduit());
          int nombreCommentaire3=new GetNombreCommentaire().getNombreCommentaire(listeMenu4.get(i).getProduit().getIdProduit());
          //JOptionPane.showMessageDialog(null, listeMenu.get(i).getProduit().getIdroduit());
       %>
          <div class="col-lg-4" >
              <a href="#" data-toggle="modal" data-target="#myModal3<%=i%>" class="offer-img">
                        <img src="images/of.png" class="img-responsive" alt="">
                        <div class="offer"><p><span>Voir</span></p></div>
                        <img  src="images/<%=listeMenu4.get(i).getProduit().getImage().trim() %>" alt="Generic placeholder image" height="150" width="150">
                       <h4><%= listeMenu4.get(i).getProduit().getDesignation() %></h4>
                        <div class="clearfix">
                            <span class="reducedfrom "><Strong><%=listeMenu4.get(i).getProduit().getPrix()%></Strong> Ar</span>
                        </div>
           </a><br>
           <button id="boutonajout" class="btn btn-default my-cart-btn my-cart-b " style="" data-id="<%=listeMenu4.get(i).getProduit().getIdProduit()%>" data-name=" <%= listeMenu4.get(i).getProduit().getDesignation() %>" data-summary="summary 3<%=i%>" data-price="<%=listeMenu4.get(i).getProduit().getPrix()%>" data-quantity="1" data-image="images/of.png">Ajouter au panier</button><br>
            
                        
        <!--Commentaire-->
      <div id="formulaire3<%=i%>" class="texte" style="display: none">
                 <form action="jj">
                    <div class="form-group">
                        <input type="hidden" name="userId" id="userId4<%=i%>" value="<%=userId%>">
                        <input type="hidden" name="menuId"  id="menuId4<%=i%>" value="<%= listeMenu4.get(i).getProduit().getIdProduit() %>">
                        <input type="hidden" name="date"  id="date4<%=i%>" value="date">
                      <label for="comment">Comment:</label>
                      <textarea class="form-control" rows="5"  name="" id="texte3<%=i%>"></textarea>
                    </div>
                     <button type="button" onclick=" javascript:afficher_cacher('desc3<%=i%>','formulaire3<%=i%>');" class="btn btn-primary" id="b4<%=i%>">Enoyer</button>
        </form>
              
      </div>
      
     <!--fin Commentaire--> 
         
          <div id="desc3<%=i%>"></div>
           <div class="row">
                   <button id="aime4<%=i%>"> <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up" id="Njaime<%=i%>">(<%= nombreJaime3 %>)</span></div></button>
                   <button id="comment4<%=i%>" onclick="javascript:afficher_cacher('desc3<%=i%>','formulaire3<%=i%>');">  <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment" id="Ncomment<%=i%>">(<%= nombreCommentaire3 %>)</span></div></button>
                   <a href="Partage?userId=<%=userId%>&image=<%= listeMenu4.get(i).getProduit().getImage() %>"> <button id="shaire4<%=i%>">  <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-share"></span></div></button></a>
                   <p id="VoirCommentaire3<%=i%>"><a href="TousComs?idProduit=<%=listeMenu4.get(i).getProduit().getIdProduit()%>">Tous</a>
                         <div id="msCon3<%=i%>"></div>
                      
                  </p>
           </div>
        </div><!-- /.col-lg-4 -->
        
        
         <!--Modal-->
        <div class="modal fade" id="myModal3<%=i%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
        <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
                <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                </div>
                <div class="modal-body modal-spa">
                                <div class="col-md-5 span-2">
                                  
                                    <div class="item">
                                          <h2><%= listeMenu4.get(i).getProduit().getDesignation() %></h2><hr><br>
                                            <img src="images/<%=listeMenu4.get(i).getProduit().getImage().trim() %>" class="img-responsive" alt="" >
                                    </div>
                                </div>
                                <div class="col-md-7 span-1 ">
                                       
                                        <p class="in-para"> 
                                            Restaurant:<br>
                                        <h2><strong><%= listeMenu4.get(i).getResto().getNomResto() %></strong></h2>:<br>
                                        Vous pouvez le trouver : <%= listeMenu4.get(i).getResto().getDescription() %>
                                       
                                        </p>
                                        <div class="price_single">
                                            Prix:
                                          <div class="clearfix">
                                              <span class="reducedfrom "><Strong><%=listeMenu4.get(i).getProduit().getPrix()%></Strong> Ar</span>
                                          </div>

                                         <div class="clearfix"></div>
                                        </div>
                                        
                                         <div class="add-to">
                                                   <button id="boutonajout" class="btn btn-default my-cart-btn my-cart-b " style="" data-id="<%=listeMenu4.get(i).getProduit().getIdProduit()%>" data-name=" <%= listeMenu4.get(i).getProduit().getDesignation() %>" data-summary="summary 3<%=i%>" data-price="<%=listeMenu4.get(i).getProduit().getPrix()%>" data-quantity="1" data-image="images/of.png">Ajouter au panier</button>
                                                 <a href="TousComs?idProduit=<%=listeMenu.get(i).getProduit().getIdProduit()%>">  
                                                   <button type="button" class="btn btn-default btn-sm">
                                                    <span class="glyphicon glyphicon-comment"></span> Commentaires
                                                  </button>
                                                 </a>
                                         </div>
                                </div>
                                <div class="clearfix"> </div>
                        </div>
                </div>
        </div>
    </div>
    <!--Fin modal-->
    
    <script>
 
	$(document).ready(function(){
		
		
		$("#b4<%=i%>").click(function()
		{
			if(document.getElementById("userId4<%=i%>").value=='0')
                        {
                            document.getElementById("msCon3<%=i%>").innerHTML="Veiller connecter!";
                        }
			
			$.ajax({
			   url : 'Comment',
			   type : 'GET',
			   data :  'userId='+document.getElementById('userId4<%=i%>').value+'&menuId='+document.getElementById('menuId4<%=i%>').value+'&daty='+document.getElementById('date4<%=i%>').value+'&texte='+document.getElementById('texte3<%=i%>').value,
			   dataType:'html',
                            success : function(responseText)
                            {
                                   $('#Ncomment<%=i%>').text(responseText);
                            },
			   error : function(resultat, statut, erreur)
			   { 
				 console.log(erreur);
			   },
			   complete : function(resultat, statut)
			  {							
			  }
			});
		    });
		});
            
            
       $(document).ready(function(){
		$("#aime4<%=i%>").click(function()
		{
			if(document.getElementById("userId4<%=i%>").value=='0')
                        {
                            document.getElementById("msCon3<%=i%>").innerHTML="Veiller connecter!";
                        }
			
			$.ajax({
			   url : 'Vote',
			   type : 'GET',
			   data :  'userId='+document.getElementById('userId3<%=i%>').value+'&menuId='+document.getElementById('menuId3<%=i%>').value+'&daty='+document.getElementById('date3<%=i%>').value,
			   dataType:'html',
                            success : function(responseText)
                            {

                                    $('#Njaime<%=i%>').text(responseText);
                             },
			   error : function(resultat, statut, erreur)
			   { 
				 console.log(erreur);
			   },
			   complete : function(resultat, statut)
			  {							
			  }
			});
		    });
		});
                
               
               
  </script>
      <%}%>
      </div><!-- /.row -->
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel1" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel1" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div><!-- /.carousel -->
</div>

	
	
<section id="contact" class="section-padding" style="background-color: #FFF;height: 500px">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h1 class="header-h">Dites ce que vous en-pensez</h1>
                   
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
                    <form action="AvisGeneral" method="post" role="get" class="contactForm">
                    
                        <div class="col-md-12 contact-form">
                            <div class="form-group label-floating is-empty">
                                <textarea class="form-control" name="message" rows="5" rows="3" data-rule="required" data-msg="Please write something for us" placeholder="Message" id="texteMessg"></textarea>
                                <div class="validation"></div>
                            </div>
                            <input type="hidden" name="userIdMsg" id="userIdMsg" value="<%=userId%>">  
                        </div>
                        
                    </form>
                        <div class="col-md-12 btnpad">
                            <div id="remerciment" style="color: black;font-size: 25px"></div><br>
                             <div id="avert" style="color: black;font-size: 25px"></div><br>
                            <div class="contacts-btn-pad">
                                <button id="coms"> <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-comment">Commentez</span></div></button>
                            </div>
                        </div>
                </div>
            <script>
                 $(document).ready(function(){
                        $("#coms").click(function()
                        {
                           
                            if(document.getElementById("userIdMsg").value=='0')
                            {
                                document.getElementById("avert").innerHTML="Veiller connecter!";
                            }
			
			$.ajax({
			   url : 'AvisGeneral',
			   type : 'GET',
			   data :  'userId='+document.getElementById('userIdMsg').value+'&text='+document.getElementById('texteMessg').value,
			   dataType:'html',
                            success : function(responseText)
                            {

                                  $('#remerciment').text(responseText);
                                  document.getElementById('texteMessg').innerHTML="";
                             },
			   error : function(resultat, statut, erreur)
			   { 
				 console.log(erreur);
			   },
			   complete : function(resultat, statut)
			  {							
			  }
			});
		    });
		});
             </script>
            </div>
        </div>
    </section>
</div>
    <footer>    
        <div class="container_12" >
        <div>
          <a href="" class="f_logo"><img src="images/lol.png" alt=""></a>
          <div class="copy">
              <strong> Co&Diams</strong>
          </div>
        </div>
      </div>
    </footer>
    
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

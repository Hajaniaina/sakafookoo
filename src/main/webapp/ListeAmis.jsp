<%@page import="objet.Client"%>
<%@page import="fonction.FonctionChat"%>
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
    
            FonctionChat fChat=new FonctionChat();

            String image=null;
            if(session.getAttribute("user")!=null)
            {
                userId=(int)session.getAttribute("user");
            }
            if(request.getParameter("image")!=null)
            {
                image=(String)request.getParameter("image");
            }
        
            String err="";
            if(request.getParameter("err")!=null)
            {
                err=request.getParameter("err");
            }
             ArrayList<Client> listeClient=fChat.listerTousLesMemres(""+userId);
             
             ArrayList<Client> personnes = fChat.listerLesPersonnes(userId);
        %>
        
     </head>
     <body  class="">

<!--==============================header=================================-->
<jsp:include page="header.jsp" />

<!--==============================Content=================================-->

<div class="content" style="margin: 0 auto;height:300px;width:1000px">
    <div style="float:left;margin-left:200px;margin-top:5%;width:250px;">
        <div style="height:100%;overflow: auto;">
            <p style="font-size: 20px">Conversations (<%=personnes.size()%>) </p>
        </div>
        <div>
            <ul>
            <%for(int i=0;i<personnes.size();i++){%>
                <li style="font-size: 16px"><a href="ToChatUser?sendeur=<%=userId%>&dest=<%=personnes.get(i).getIdClient() %>"> <% out.print(personnes.get(i).getNom().concat(" ".concat(personnes.get(i).getPrenom())));%></a></li>
            <%}%>
           </ul> 
        </div>

    </div>
    <div  style="float:right;height:100%;width:250px;margin-right:100px;margin-top:5%;">
        <div>
           <p style="font-size: 20px">Membres (<%=listeClient.size()%>)</p>
        </div>
        <div style="height:100%;overflow: auto;">
            <ul>  
            <%for(int i=0;i<listeClient.size();i++){%>
             <li style="font-size: 16px"><a href="ToChatUser?sendeur=<%=userId%>&dest=<%=listeClient.get(i).getIdClient() %>"> <% out.print(listeClient.get(i).getNom().concat(" ".concat(listeClient.get(i).getPrenom())));%></a></li>
             <%}%>
        </ul>
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
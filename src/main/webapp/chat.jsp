<%@page import="objet.Client"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="FoctionChat.InsertChat"%>
<%@page import="fonction.FonctionChat"%>
<%@page import="objet.Chat"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
     <head>
     <title>Contacts</title>
            
<meta charset="utf-8">
    <jsp:include page="LOGIN/index.jsp" />
     <script>
        $(document).ready(function(){

          $().UItoTop({ easingType: 'easeOutQuart' });
        }) ;
        
        
     </script>
     </head>
     <body>

<!--==============================header=================================-->
<jsp:include page="header.jsp" />
 <script type="text/javascript">
 
</script>
<!--==============================Content=================================-->
<%
        int userId=0;
        int clientId=0;
        FonctionChat fChat=new FonctionChat();
       if(session.getAttribute("user")!=null)
       {
           userId=(int)session.getAttribute("user");
       }
       if(session.getAttribute("destinateur")!=null)
       {
           clientId=(int)session.getAttribute("destinateur");
       }
       //tousles msg
     
       ServletContext cont=getServletContext();
        if(cont.getAttribute("img")!=null)
         {
             // JOptionPane.showMessageDialog(null, cont.getAttribute("img"));
              String img=request.getParameter("image");
              String imgPath=cont.getAttribute("img").toString();
              new InsertChat().insertChat(""+userId, ""+clientId, imgPath,"1");
              cont.removeAttribute("img");
         }
        ArrayList<Chat> listeMessages = new FonctionChat().listeMessages(userId, clientId);
        ArrayList<Client> listeClient=fChat.listerTousLesMemres(""+userId);
        ArrayList<Client> personnes = fChat.listerLesPersonnes(userId);
        ArrayList<Client> UnMembresDest=fChat.UnMembres(""+clientId);
        ArrayList<Client> UnMembresExp=fChat.UnMembres(""+userId);
       
%>
<div class="content" style="margin: 0 auto;width:1000px">
    <form method="" action="">
         <input type="hidden" id="userIdSedeur" value="<%=userId%>">
         <input type="hidden" id="userIdRecepteur" value="<%=clientId%>">
    </form>
    <div style="margin-top:5%;margin-left:20px;float:left;">
        <div >
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
    <div class="chat" id="pageChat"  style="width:50%;margin-top:5%;"> 
        <div>
        <ul>
         <% for(int i=0;i<listeMessages.size();i++){%>
         <% if(listeMessages.get(i).getIdExpediteur()!=userId){%>
          <li class="other">
            <a class="user" href="#"><img alt="" src="" /></a>
            <div class="date" style="font-size: 15px">
                  <%=UnMembresDest.get(0).getNom() %>:
                <%=listeMessages.get(i).getDateMessage()%>
             
             
            </div>
            <div class="message">
              <div class="hider">
                <span></span>
              </div>
                <%
                    
                %>
              <% if(listeMessages.get(i).getIsImageShare().compareToIgnoreCase("0")==0){%>
              <p>
                  <%=listeMessages.get(i).getContenuMsg() %>
              </p>
              <%}%>
               <% if(listeMessages.get(i).getIsImageShare().compareToIgnoreCase("1")==0){%>
                  <img src="images/<%=listeMessages.get(i).getContenuMsg() %>" height="150" width="150" />
              <%}%>
            </div>
          </li>
          <%}%>
           <% if(listeMessages.get(i).getIdExpediteur()==userId){%>
          <li class="you">
            <a class="user" href="#"><img alt="" src="" /></a>
                <div class="date" style="font-size: 15px">
                  <%=UnMembresExp.get(0).getNom() %>:
                  <%=listeMessages.get(i).getDateMessage() %>
                
                </div>
            <div class="message">
              <div class="hider">

              </div>
                 <% if(listeMessages.get(i).getIsImageShare().compareToIgnoreCase("0")==0){%>
                      <p>
                         <%=listeMessages.get(i).getContenuMsg() %>
                     </p>
              
                <%}%>
                <% if(listeMessages.get(i).getIsImageShare().compareToIgnoreCase("1")==0){%>
                    <p>
                        <img src="images/<%=listeMessages.get(i).getContenuMsg() %>" height="150" width="150" />
                    </p>
                <%}%>
            </div>
          </li>
          <%}%>
         <%}%>
        </ul>
      </div>
   <div class="type-text" style="margin-left: 20%;width:80%;margin-top:5%;">
      <form>
        <div class="form-group" >
         
            <textarea class="form-control" rows="2" id="text" ></textarea>
        </div>
      </form>
         <button type="button" class="btn btn-primary" id="send">Envoyer</button>
    </div>
     </div>
    
   <div style="height:100%;width:250px;margin-right:100px;margin-top:5%;">
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
    

 <script src="js/index.js"></script>
<script>
     $(document).ready(function(){
		$("#send").click(function()
		{
			$.ajax({
			   url : 'Chat',
			   type : 'GET',
			   data :  'userIdSedeur='+document.getElementById('userIdSedeur').value+'&userIdRecepteur='+document.getElementById('userIdRecepteur').value+'&text='+document.getElementById('text').value,
			   dataType:'html',
                            success : function(code_html,statut)
                            {
                              //$('#answer').append(code_html);
                              
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
<!--==============================footer=================================-->


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
     <script src="js/map.js"></script>
       <link rel="stylesheet" href="css/chat.css">
       <link rel='stylesheet prefetch' href='http://cdnjs.cloudflare.com/ajax/libs/font-awesome/3.2.1/css/font-awesome.min.css'>

</body>

</html>
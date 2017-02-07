<%-- 
    Document   : ListeCommentaire
    Created on : 4 févr. 2017, 19:14:42
    Author     : User
--%>

<%@page import="FonctionCommentaire.GetNombreCommentaire"%>
<%@page import="FonctionJaime.GetNombreJaime"%>
<%@page import="FonctionCommentaire.VoirCommentaireProduit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lite commentaire</title>
    </head>
    <!--==============================header=================================-->
    <jsp:include page="header.jsp" />
    
    <!--==============================Content=================================-->

    
    <%
            String idProduit=request.getParameter("idcoms");
            ServletContext context=getServletContext();
            Object[][]listeCom=( Object[][])context.getAttribute("listeCom");
           // int idProduit=Integer.parseInt(context.getAttribute("idProduit").toString());
             int nombreJaime=new GetNombreJaime().getNombreJaime(Integer.parseInt((idProduit)));
             int nombreCommentaire=new GetNombreCommentaire().getNombreCommentaire(Integer.parseInt(idProduit));
             
              int userId=0;
              if(session.getAttribute("user")!=null)
              {
                    userId=(int)session.getAttribute("user");
              }
    %>
    <body>
       
        
        <div id="content" style="background-color:#FFF">
            <div class="row" style="background-color:#286090;margin-left:  20%;margin-right:  15%;color: white;" >
                 <div class="col-sm-6">
                     <div id="img" style="height: 150px;width: 150px;background-color: white">
                         <img src="images/<%=listeCom[0][4]%>" height="150" width="150" alt="Image de produit">    
                     </div>
                     <div class="row" style="margin-left: 0px;">
                        <button id="aime"> <div class="col-sm-4" style="background-color:lavender;"><span class="glyphicon glyphicon-thumbs-up" id="Njaime">(<%=nombreJaime%>)</span></div></button>
                        <a href="Partage?userId=<%=userId%> &image=<%=listeCom[0][4]%>"> <button id="shaire4">  <div class="col-sm-4" style="background-color:lavender"><span class="glyphicon glyphicon-share"></span></div></button></a>
                     </div> 
                     <div id="msgCon"></div>
                 </div>
                <div class="col-sm-6">
                    <div id="nom" style="height: auto; width: auto;font-family: initial;font-size: 20px"><%=listeCom[0][2]%></div>
                    <div id="prix" style="height: auto; width: auto;font-family: initial;font-size: 20px">Prix:<%=listeCom[0][5]%> Ar</div><hr>
                    <div id="prix" style="height: auto; width: auto;font-family: initial;font-size: 20px"><%=nombreJaime%> Jaim et <%=nombreCommentaire%> Commentaires</div><hr>
                </div>
                
            </div><br>
            <h1 style="color: black"> Liste des commentaires</h1>
            <div class="row" style="background-color:#DDD7D7;margin-left:  20%;margin-right:  15%; overflow: auto;height: 300px" >
                
                <div class="col-sm-12">
                   
                     <% for(int i=0;i<listeCom.length;i++){%>
                      <div id="nom" style="height: auto; width: auto;font-family: initial;font-size: 20px;color: #017ebc">
                          <div id="nom" style="float: left" > <%=listeCom[i][9] %></div>
                          <div id="date" style="float: right"><%=listeCom[i][8]%><br>
                              
                          </div>
                     </div><hr>
                        <div id="prix" style="height: auto; width: auto;font-family:fantasy ;font-size: 15px"><%=listeCom[i][7]%></div><hr>
                        
                   <%}%>
                </div>
                 
            </div> <br>
                <div class="row" style="background-color:#FFF;margin-left:  20%;margin-right:  15%;">
                     <div class="col-sm-12">
                        <div class="type-text">
                            <form>
                              <div class="form-group" style="border-color: #4099FF;background-color: #D0D0D0">
                                  <input type="hidden" id="userId" name="userId" value="<%=userId%>">
                                  <input type="hidden" id="menuId" name="userId" value="<%= idProduit%>">
                                  <input type="hidden" id="daty" name="daty" value="2013-10-10">
                                  <textarea class="form-control" placeholder="Votre commentaire" rows="2" id="text" ></textarea>
                              </div>
                            </form>
                               <button type="button" class="btn btn-primary" id="repondre">Repondre</button>
                         </div>
                                  <div  id="msg"></div>
                     </div>
                </div>
        </div>
        
          <script>
              $(document).ready(function(){
		
		
		$("#repondre").click(function()
		{
			if(document.getElementById("userId").value=='0')
                        {
                            document.getElementById("msg").innerHTML="Veiller connecter!";
                        }
			
			$.ajax({
			   url : 'Comment',
			   type : 'GET',
			   data :  'userId='+document.getElementById('userId').value+'&menuId='+document.getElementById('menuId').value+'&daty='+document.getElementById('daty').value+'&texte='+document.getElementById('text').value,
			   dataType:'html',
                            success : function(responseText)
                            {
                                  // $('#Ncomment').text(responseText);
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
		$("#aime").click(function()
		{
			if(document.getElementById("userId").value=="0")
                        {
                            document.getElementById("msgCon").innerHTML="Veiller connecter";
                        }
			
			$.ajax({
			   url : 'Vote',
			   type : 'GET',
			   data :  'userId='+document.getElementById('userId').value+'&menuId='+document.getElementById('menuId').value+'&daty='+document.getElementById('daty').value,
			   dataType:'html',
                            success : function(responseText)
                            {
                                    //alert(responseText);
                                   $('#Njaime').text(responseText);
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
                
                function voirCaherRep(nomDiv)
                {
                    if(document.getElementById(nomDiv).style.display=="none")
                    {
                        document.getElementById(nomDiv).style.display=="block"
                    }
                    else
                    {
                        document.getElementById(nomDiv).style.display=="none"
                    }
                }
       </script>
        <!--==============================header=================================-->
            <jsp:include page="LOGIN/index.jsp" />
            

        <!--==============================Content=================================-->
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
    </body>
</html>

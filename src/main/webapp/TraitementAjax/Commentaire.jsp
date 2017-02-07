<%-- 
    Document   : Commentaire
    Created on : 25 janv. 2017, 22:17:07
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                String text=request.getParameter("texte");
                out.print(text);
        %>
    </body>
</html>

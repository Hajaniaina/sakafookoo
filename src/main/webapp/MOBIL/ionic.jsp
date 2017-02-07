<%-- 
    Document   : ionic
    Created on : 20 janv. 2017, 22:49:42
    Author     : user
--%>
<%@page import="com.sun.management.VMOption.Origin"%>
<%@page import="javax.persistence.Access"%>
<%@page import="java.util.ResourceBundle.Control"%>
<%@page import="java.util.ArrayList"%>
<%@page import="fonction.*"%>
<%@page import="objet.*"%>

<%
    response.addHeader("Access-Control-Allow-Origin","*");
    FonctionCategorie fonction = new FonctionCategorie();
    out.print(fonction.JSONparseCat());
%>




<%-- 
    Document   : detail
    Created on : 26 janv. 2017, 00:36:15
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
    FonctionMenu fonction = new FonctionMenu();
     out.print(fonction.JSONlisterMenus());
%>

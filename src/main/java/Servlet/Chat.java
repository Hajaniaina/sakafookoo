/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import FoctionChat.InsertChat;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author User
 */
public class Chat extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           out.println(" <li class=\"you\">");
            out.println("<a class=\"user\" href=\"#\"><img alt=\"\" src=\"\" /></a>");
            out.println("<div class=\"date\">");
            out.println("<title>//date");            
            out.println(" </div>");
            out.println("<div class=\"message\">");
            out.println("<div class=\"hider\">");
            out.println(" </div>");
            out.println("<p>");
            out.println("//text");
            out.println("</p>");
            out.println("</div>");
            
            
           
            
        
           
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(request.getParameter("text")!="")
        {
            String idUserSender=request.getParameter("userIdSedeur");
            String idUserEXediteur=request.getParameter("userIdRecepteur");
            String texte=request.getParameter("text");
        //JOptionPane.showMessageDialog(null, texte);
        new InsertChat().insertChat(idUserSender, idUserEXediteur, texte,"0");
        }
        
        processRequest(request, response);
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

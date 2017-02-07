/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import FonctionCommentaire.GetNombreCommentaire;
import FonctionCommentaire.InsertCommentaire;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author User
 */
public class Comment extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   
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
       // JOptionPane.showMessageDialog(null, "teste");
        if(request.getParameter("userId")!=null && request.getParameter("userId").compareToIgnoreCase("0")!=0 && request.getParameter("texte")!="" )
        {
           
           String idUser=request.getParameter("userId");
           String idMenu=request.getParameter("menuId");
           String texte=request.getParameter("texte");
           //insertion//
           //JOptionPane.showMessageDialog(null, idUser);
            new InsertCommentaire().insertCommentaire(idUser, idMenu, texte);
           
          // JOptionPane.showMessageDialog(null, idMenu);
           response.setContentType("text/plain");
           response.getWriter().write(1);
        }
        else
        {
            
        }
        
       
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Comment.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           int nombreCommentaire=new GetNombreCommentaire().getNombreCommentaire(Integer.parseInt(request.getParameter("menuId")));
           out.println(nombreCommentaire);
           
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Comment.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

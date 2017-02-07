/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import FonctionCommentaire.GetNombreCommentaire;
import FonctionJaime.GetNombreJaime;
import FonctionJaime.InsertJaime;
import FonctionJaime.UpdateJaime;
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
public class Vote extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         //JOptionPane.showMessageDialog(null, request.getParameter("userId"));
         if(request.getParameter("userId")!=null && request.getParameter("userId").compareToIgnoreCase("0")!=0 )
        {
            
           String idUser=request.getParameter("userId");
           String idMenu=request.getParameter("menuId");
           String date=request.getParameter("daty");
             try {
                 //insert
                 if(!new UpdateJaime().testeSiCettePersDejaAime(idUser, idMenu))
                 {
                      new InsertJaime().insertJaime(idUser, idMenu);
                 }
                 else
                 {
                     new UpdateJaime().updateJaime(idUser, idMenu);
                 }
                    
             } catch (Exception ex) {
                 Logger.getLogger(Vote.class.getName()).log(Level.SEVERE, null, ex);
             }
           response.setContentType("text/plain");
           response.getWriter().write(1);
        }
         else
         {
            
         }
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Vote.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            int nombreJaime=new GetNombreJaime().getNombreJaime(Integer.parseInt(request.getParameter("menuId")));
            out.print(nombreJaime);
        }
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Vote.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

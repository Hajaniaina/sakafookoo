/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import FoctionChat.InsertChat;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author User
 */
public class ToChatUser extends HttpServlet {

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
            
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         RequestDispatcher disp;
         HttpSession session=request.getSession(true);
         int  dest=Integer.parseInt(request.getParameter("dest"));
        
        if(request.getParameter("sendeur")!=null && request.getParameter("sendeur").compareToIgnoreCase("0")!=0)
        {
             int  sendeur=Integer.parseInt(request.getParameter("sendeur"));
             
             session.setAttribute("destinateur", dest);
             disp=request.getRequestDispatcher("chat.jsp");
             disp.include(request, response);
             processRequest(request, response);
        }
        else
        {
            disp=request.getRequestDispatcher("ListeAmis.jsp?err= Veuiller connecter");
            disp.include(request, response);
            processRequest(request, response);
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

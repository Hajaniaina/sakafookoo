/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import fonction.FonctionConnexion;
import fonction.FonctionGenerale;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import objet.Client;
import objet.Contact;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author User
 */
public class InscriptionEtConnexion extends HttpServlet {
      private static final long serialVersionUID = 1L;
      private ServletFileUpload uploader = null;
      
      public void init() throws ServletException{
		DiskFileItemFactory fileFactory = new DiskFileItemFactory();
		File filesDir = (File) getServletContext().getAttribute("FILES_DIR_FILE");
		fileFactory.setRepository(filesDir);
		this.uploader = new ServletFileUpload(fileFactory);
	}
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
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
         PrintWriter out=response.getWriter();  
          RequestDispatcher disp;
         HttpSession session = request.getSession(true);
         ServletOutputStream os = null;
         InputStream fis = null;
        try
        {
            if(request.getParameter("singin")!=null)
            {
                //file umplode//
                
                //--------------/
                String nom=request.getParameter("nom");
                String prenom=request.getParameter("prenom");
                String mail=request.getParameter("mail");
                String adresse=request.getParameter("adresse");
                String phone=request.getParameter("numtel");
                String pass=request.getParameter("pass");
                
                Contact cnt=new Contact();
                cnt.setAdresse(adresse);
                cnt.setNumero(phone);
                Client client=new Client();
                client.setContact(cnt);
                client.setMdp(pass);
                client.setNom(nom);
                client.setPrenom(prenom);
                client.setUtilisateur(mail);
                new FonctionConnexion().insertClient(client);
                int lastInsert=new FonctionGenerale().getLastInsertId("idclient", "client");
                session.setAttribute("user",lastInsert);
                disp=request.getRequestDispatcher("index.jsp?erreur=Inscription bien faite");
                disp.include(request, response);
                processRequest(request, response);
            }
            if(request.getParameter("login")!=null)
            {
                String mail=request.getParameter("mail");
                String pass=request.getParameter("pass");
                
                Client c= new FonctionConnexion().getClient(mail,pass);
                
                if(c.getUtilisateur()==null)
                { 
                     request.getRequestDispatcher("index.jsp?erreur=Desolé, mail ou mot de passe erreur").include(request, response);  
                }
                else
                {
                     session.setAttribute("user", c.getIdClient());
                     request.getRequestDispatcher("index.jsp?erreur=Merci").include(request, response);     
                }
            }           
        }
        catch(Exception ex)
        {
             disp=request.getRequestDispatcher("index.jsp?erreur=Probleme lors de l'insertion de votre autentification");
             disp.include(request, response);
        }
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       if(!ServletFileUpload.isMultipartContent(request)){
			throw new ServletException("Content type is not multipart/form-data");
		}
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.write("<html><head></head><body>");
		try {
			List<FileItem> fileItemsList = uploader.parseRequest((RequestContext) request);
			Iterator<FileItem> fileItemsIterator = fileItemsList.iterator();
			while(fileItemsIterator.hasNext()){
				FileItem fileItem = fileItemsIterator.next();
				System.out.println("FieldName="+fileItem.getFieldName());
				System.out.println("FileName="+fileItem.getName());
				System.out.println("ContentType="+fileItem.getContentType());
				System.out.println("Size in bytes="+fileItem.getSize());
				
				File file = new File(request.getServletContext().getAttribute("FILES_DIR")+File.separator+fileItem.getName());
				System.out.println("Absolute Path at server="+file.getAbsolutePath());
				fileItem.write(file);
				out.write("File "+fileItem.getName()+ " uploaded successfully.");
				out.write("<br>");
				out.write("<a href=\"UploadDownloadFileServlet?fileName="+fileItem.getName()+"\">Download "+fileItem.getName()+"</a>");
			}
		} catch (FileUploadException e) {
			out.write("Exception in uploading file.");
		} catch (Exception e) {
			out.write("Exception in uploading file.");
		}
		out.write("</body></html>");
	}
    

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

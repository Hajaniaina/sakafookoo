/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FonctionCommentaire;

import java.sql.Connection;
import java.sql.ResultSet;
import javax.swing.JOptionPane;
import utilitaire.UtilDB;

/**
 *
 * @author User
 */
public class GetNombreCommentaire {
    public Connection connexion;
    public UtilDB base;
    public ResultSet resultSet;
    public java.sql.Statement statement;
    public String request = "";
    
    public int  getNombreCommentaire(int idMenu) throws Exception
    {
        int nombre=0;
        base  = new UtilDB();
        connexion = base.getConn();
        statement = connexion.createStatement();     
        String req = "select count(idcommprod)as nbCommentaire from commentaireproduit where idproduit="+idMenu+"";
       // System.out.println(req);
        try{
            ResultSet res= statement.executeQuery(req);
             
            while(res.next()){
               
               nombre=res.getInt(1);
            }
        }catch(Exception exc){
            
        }
        connexion.close();
        return nombre;
    }
}

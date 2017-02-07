/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FonctionJaime;

import java.sql.Connection;
import java.sql.ResultSet;
import utilitaire.UtilDB;

/**
 *
 * @author User
 */
public class GetNombreJaime {
    public Connection connexion;
    public UtilDB base;
    public ResultSet resultSet;
    public java.sql.Statement statement;
    public String request = "";
    
    public int getNombreJaime(int idMenu) throws Exception
    {
        int nombre=0;
        base  = new UtilDB();
        connexion = base.getConn();
        statement = connexion.createStatement();     
         String req = "select count(idjaime)as nbJaime from jaimeplat where idplat="+idMenu+"";
        //System.out.println(req);
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

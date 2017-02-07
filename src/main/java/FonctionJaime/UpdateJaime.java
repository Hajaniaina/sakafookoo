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
public class UpdateJaime {
    public Connection connexion;
    public UtilDB base;
    public ResultSet resultSet;
    public java.sql.Statement statement;
    public String request = "";
    
    public void updateJaime(String idUser, String idMenu)
    {
        try
        {
            base=new UtilDB();
            connexion=base.getConn();
            request="delete from jaimeplat where idclient="+Integer.parseInt(idUser)+" and idplat="+Integer.parseInt(idMenu)+"";
            statement=connexion.createStatement();
            statement.executeUpdate(request);
            connexion.close();
        }
        catch(Exception ex)
        {
            
        }
    }
    
    public boolean testeSiCettePersDejaAime(String idUser,String idMenu) throws Exception
    {
        boolean resp=false;
        
        int nombre=0;
        base  = new UtilDB();
        connexion = base.getConn();
        statement = connexion.createStatement();     
         String req = "select count(idclient)as nbUser from jaimeplat where idplat="+idMenu+" and idclient="+idUser+"";
        //System.out.println(req);
        try{
            ResultSet res= statement.executeQuery(req);
            while(res.next()){
               nombre=res.getInt(1);
            }
            if(nombre>0)
            {
                return true;
            }
        }catch(Exception exc){
            
        }
        finally
        {
             connexion.close();
        }
       
        return resp;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fonction;

import java.sql.Connection;
import java.sql.ResultSet;
import utilitaire.UtilDB;

/**
 *
 * @author user
 */
public class FonctionGenerale {
    public Connection connexion;
    public UtilDB base;
    public ResultSet resultSet;
    public java.sql.Statement statement;
    public String request = "";
    
    public FonctionGenerale(){
	try{
            base  = new UtilDB();
            connexion = base.getConn();
            statement = connexion.createStatement();             
        }catch(Exception exception){
        }
    }
    
    //avoir la derniere indice d'une sequence
    public int getLastInsertId(String sequence,String table){
        int ret=0;
        String req = " select max("+sequence+") as value from "+table;
        System.out.print(req);
        try{
            ResultSet res= statement.executeQuery(req);
            while(res.next()){
                 ret=res.getInt("value");
            }
        }catch(Exception exc){
            
        }
        
        return ret;
    }
}

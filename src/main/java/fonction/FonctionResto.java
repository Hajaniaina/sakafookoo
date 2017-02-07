/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fonction;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import objet.Resto;
import utilitaire.UtilDB;

/**
 *
 * @author user
 */
public class FonctionResto {
    public Connection connexion;
    public UtilDB base;
    public ResultSet resultSet;
    public java.sql.Statement statement;
    public String request = "";
    
    public FonctionResto(){
	try{
            base  = new UtilDB();
            connexion = base.getConn();
            statement = connexion.createStatement();             
        }catch(Exception exception){
        }
    }
    
    public ArrayList<Resto> listerTousLesRestos(){
        ArrayList<Resto> liste = new ArrayList<>();
         String req = "select * from produit";
        try{
            ResultSet res= statement.executeQuery(req);
            while(res.next()){
                Resto p = new Resto();
                p.setIdResto(res.getInt("isResto"));
                p.setNomResto(res.getString("nomresto"));
                p.setDescription(res.getString("description"));
                p.setIdMap(res.getInt("idMap"));
                p.setIdContact(res.getInt("idContact"));
            }
        }catch(Exception exc){
            
        }
        return liste;   
    }
}

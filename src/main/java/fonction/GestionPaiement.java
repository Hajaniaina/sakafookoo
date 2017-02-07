/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fonction;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import objet.Categorie;
import objet.Paiement;
import utilitaire.UtilDB;

/**
 *
 * @author user
 */
public class GestionPaiement {
    public Connection connexion;
    public UtilDB base;
    public ResultSet resultSet;
    public java.sql.Statement statement;
    public String request = "";
    
    public GestionPaiement(){
	try{
            base  = new UtilDB();
            connexion = base.getConn();
            statement = connexion.createStatement();             
        }catch(Exception exception){
        }
    }
    
    public ArrayList<Paiement> listepaiements(){
        ArrayList<Paiement> liste = new ArrayList<>();
        String req = "select * from categorie";
        try{
            ResultSet res= statement.executeQuery(req);
            while(res.next()){
                Paiement p = new Paiement();
                p.setIdPaiement(res.getInt("idPaiement"));
                p.setIdCommande(res.getInt("idCommande"));
                p.setDatePaiement(res.getDate("datepaiement"));
                p.setMontant(res.getDouble("montant"));
                liste.add(p);
            }
        }catch(Exception exc){
            
        }
        return liste;
    }
    
    public void payer(int id,double montant){
        String req = "INSERT into paiement VALUES(idpaiement.nextVal,"+id+",SYSDATE,"+montant+")";
        try{
            ResultSet res= statement.executeQuery(req);
            connexion.commit();
        }catch(Exception exc){
            
        }
    }
    
    
}

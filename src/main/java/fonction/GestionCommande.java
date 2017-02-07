/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fonction;

import java.sql.Connection;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import objet.Client;
import objet.Commande;
import objet.DetailCommande;
import utilitaire.UtilDB;

/**
 *
 * @author user
 */
public class GestionCommande {
    public Connection connexion;
    public UtilDB base = new UtilDB();
    public ResultSet resultSet;
    public java.sql.Statement statement;
    public String request = "";
    FonctionGenerale f=new FonctionGenerale();
    
    public GestionCommande(){
        //System.setProperty("java.awt.headless","true");
         try{
         connexion = base.getConn();
         statement = connexion.createStatement();    
         
        }catch(Exception exception){
            
        }
    }
     public void insertCommande(int  client){
         java.util.Date daty = Calendar.getInstance().getTime();
        DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        String today = formatter.format(daty);
        String req = "INSERT into commande (\"idClient\",dateCommande) VALUES("+client+",'"+today+"')";
        try{
            ResultSet res= statement.executeQuery(req);
            connexion.commit();
        }catch(Exception exc){
            
        }
    }
    
      public Commande getDerniereFacture(int id){
        Commande liste = new Commande();

        String req = "select * from Commande where \"idClient\"="+id+" ORDER BY idCommande DESC";
        System.out.println(req);
        try{
            ResultSet res= statement.executeQuery(req);
            while(res.next()){
                liste.setIdCommande(res.getInt("idCommande"));
                liste.setDateCommande(res.getDate("dateCommande"));
                liste.setIdClient(res.getInt("idClient"));
                break;
            }
        }catch(Exception exc){
            
        }
        return liste;
    }
     
     
       public boolean testDate (int id){
        boolean ret = false;
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
        String b=sdf.format(date);
        
        Commande dern = new Commande();
        dern=getDerniereFacture(id);
        System.out.println(b);
        if(dern.getDateCommande()!=null){
            if(dern.getDateCommande().toString().equals(b)){
                ret =true;
            }
        }
        
        return ret;
    }
     
    public int insertFactureFille(DetailCommande cmd,int id){
         int idM = 0;
        boolean test = testDate(id);
        if(!test){
            insertCommande(id);
        }
        idM = f.getLastInsertId("idcommande","commande");
        
        String req = "INSERT into detailcommande(idCommande,idProduit,quantite) VALUES("+idM+","+cmd.getIdProduit()+","+cmd.getQuantite()+")";
        try{
            ResultSet res= statement.executeQuery(req);
        }catch(Exception exc){
            
        }
        return idM;
    }
}

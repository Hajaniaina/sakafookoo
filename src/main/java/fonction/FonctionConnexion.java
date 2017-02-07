/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fonction;

import java.sql.Connection;
import java.sql.ResultSet;
import objet.Client;
import objet.Contact;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import utilitaire.UtilDB;

/**
 *
 * @author user
 */
public class FonctionConnexion {
    public Connection connexion;
    public UtilDB base;
    public ResultSet resultSet;
    public java.sql.Statement statement;
    public String request = "";
    
    public FonctionConnexion(){
	try{
            base  = new UtilDB();
            connexion = base.getConn();
            statement = connexion.createStatement();             
        }catch(Exception exception){
        }
    }
    
    public Client getClient(String user,String mdp){
        Client ret = new Client();
        String req = "select * from client  where utilisateur='"+user+"' AND mdp='"+mdp+"'";
        System.out.println(req);
        try{
            ResultSet res= statement.executeQuery(req);
            while(res.next()){
                ret.setIdClient(res.getInt("idClient"));
                ret.setNom(res.getString("nomClient"));
                ret.setPrenom(res.getString("prenomClient"));
                ret.setMdp(res.getString("mdp"));
                ret.setUtilisateur(res.getString("utilisateur"));
            }
        }catch(Exception exc){
            
        }
        return ret;
    }
    public JSONArray getClientMobile(String user,String mdp) throws ParseException{
        Client cli = getClient(user,mdp);
        
        JSONParser parser=new JSONParser();
        String token="";
        if(cli.getUtilisateur()!=null){
            token = "[0,{\"valeur\":\"true\",\"idClient\":\""+cli.getIdClient()+"\",\"user\":\""+cli.getUtilisateur()+"\""+"}]";
        }else{
             token = "[0,{\"valeur\":\"false\",\"idClient\":\"\",\"user\":\"\"}]";
        }
        Object obj = parser.parse(token);
         JSONArray array = (JSONArray)obj;
        return(array);
    }
    
     public void insertContact(Client client){
        String req = "INSERT into contact(adresse,numero) VALUES('"+client.getContact().getAdresse()+"','"+client.getContact().getNumero()+"')";
        try{
            ResultSet res= statement.executeQuery(req);
            connexion.commit();
        }catch(Exception exc){
        }
     }
     public void insertClient(Client client){
        insertContact(client);
        FonctionGenerale f = new FonctionGenerale();
        try{
            int idContact = f.getLastInsertId("idcontact","contact");
            String req = "INSERT INTO CLIENT(idcontact,nomclient,prenomclient,utilisateur,mdp) VALUES ("+idContact+",'"+client.getNom()+"','"+client.getPrenom()+"','"+client.getUtilisateur()+"','"+client.getMdp()+"')";
            System.out.print(req);
            statement.executeUpdate(req);
        }catch(Exception exc){
        }
     }
     
}

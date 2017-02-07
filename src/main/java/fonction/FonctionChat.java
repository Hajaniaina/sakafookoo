/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fonction;

import com.google.gson.Gson;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import javax.swing.JOptionPane;
import objet.Chat;
import objet.Client;
import utilitaire.UtilDB;

/**
 *
 * @author user
 */
public class FonctionChat {
    public Connection connexion;
    public UtilDB base;
    public ResultSet resultSet;
    public java.sql.Statement statement;
    public String request = "";
    
    public FonctionChat(){
	try{
            base  = new UtilDB();
            connexion = base.getConn();
            statement = connexion.createStatement();             
        }catch(Exception exception){
        }
    }
    public ArrayList<Client> listerLesPersonnes(int id) throws Exception{
         connexion = base.getConn();
         statement = connexion.createStatement();     
        ArrayList<Client> liste = new ArrayList<>();
        String req = "select distinct idClient,nomClient,prenomClient from client join chat on client.idClient=chat.iddestinataire where idexpediteur="+id+" UNION select distinct idClient,nomClient,prenomClient from client join chat on client.idClient=chat.idexpediteur where iddestinataire="+id;
        System.out.println(req);
        try{
            ResultSet res= statement.executeQuery(req);
            while(res.next()){
                Client client = new Client();
                client.setIdClient(res.getInt("idClient"));
                client.setNom(res.getString("nomClient"));
                client.setPrenom(res.getString("prenomClient"));
                liste.add(client);
                connexion.close();
            }
        }catch(Exception exc){
            
        }
        return liste;
    }
    
     public ArrayList<Client> listerTousLesMemres(String idUser) throws Exception{
          connexion = base.getConn();
          statement = connexion.createStatement();     
        ArrayList<Client> liste = new ArrayList<>();
        String req = "select distinct idClient,nomClient,prenomClient from client where idClient!="+idUser+"";
        System.out.println(req);
        try{
            ResultSet res= statement.executeQuery(req);
            while(res.next()){
                Client client = new Client();
                client.setIdClient(res.getInt("idClient"));
                client.setNom(res.getString("nomClient"));
                client.setPrenom(res.getString("prenomClient"));
                liste.add(client);
                 connexion.close();
            }
        }catch(Exception exc){
            
        }
        return liste;
    }
      public ArrayList<Client> UnMembres(String idUser) throws Exception{
        connexion = base.getConn();
         statement = connexion.createStatement();     
        ArrayList<Client> liste = new ArrayList<>();
        String req = "select distinct idClient,nomClient,prenomClient from client where idClient="+idUser+"";
        System.out.println(req);
        try{
            ResultSet res= statement.executeQuery(req);
            while(res.next()){
                Client client = new Client();
                client.setIdClient(res.getInt("idClient"));
                client.setNom(res.getString("nomClient"));
                client.setPrenom(res.getString("prenomClient"));
                liste.add(client);
                 //JOptionPane.showMessageDialog(null, "Ato");
                 connexion.close();
            }
        }catch(Exception exc){
            JOptionPane.showMessageDialog(null, exc.getMessage());
        }
        return liste;
    }
    
    public ArrayList<Chat> listeMessages(int idUser,int idDest) throws Exception{
        connexion = base.getConn();
        statement = connexion.createStatement();     
        ArrayList<Chat> liste = new ArrayList<>();
        String req = "select chat.idExpediteur,chat.idDestinataire,chat.contenuMsg,chat.datemsg,idmsg,isimageshare from client join chat on client.idClient=chat.iddestinataire where idexpediteur="+idUser+"AND iddestinataire="+idDest+" UNION select chat.idExpediteur,chat.idDestinataire,chat.contenuMsg,chat.datemsg,idmsg,isimageshare from client join chat on client.idClient=chat.idexpediteur where iddestinataire="+idUser+"AND idexpediteur="+idDest+" order by dateMsg,idmsg";
        System.out.println(req);
        try{
            ResultSet res= statement.executeQuery(req);
            while(res.next()){
                Chat chat = new Chat();
                chat.setIdExpediteur(res.getInt("idExpediteur"));
                chat.setIdDestinataire(res.getInt("idDestinataire"));
                chat.setContenuMsg(res.getString("contenuMsg"));
                chat.setDateMessage(res.getDate("dateMsg"));
                chat.setIsImageShare(res.getString("isimageshare"));
                // JOptionPane.showMessageDialog(null, chat.getIsImageShare());
                liste.add(chat);
                 connexion.close();
            }
        }catch(Exception exc){
            
        }
        return liste;
    }
    
    public String JSONlisterLesPersonnes(int id) throws Exception{
       ArrayList<Client> liste = listerLesPersonnes(id);
       Gson gson = new Gson();
       return(gson.toJson(liste));
    }
    
    public String JSONlisterMessages(int idUser,int idDest) throws Exception{
       ArrayList<Chat> liste = listeMessages(idUser,idDest);
       Gson gson = new Gson();
       return(gson.toJson(liste));
    }
    
    public void insertChat(Chat chat) throws SQLException{
        java.util.Date daty = Calendar.getInstance().getTime();
        DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        String today = formatter.format(daty);
        String req="insert into chat(idExpediteur,idDestinataire,contenuMsg,dateMsg,isimageshare) values("+chat.getIdExpediteur()+","+chat.getIdDestinataire()+",'"+chat.getContenuMsg()+"','"+today+"',"+chat.getIsImageShare()+")";
        System.out.print(req);
        statement.executeUpdate(req);
         connexion.close();
    }
}

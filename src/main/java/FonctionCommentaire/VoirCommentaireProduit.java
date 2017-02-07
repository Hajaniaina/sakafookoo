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
public class VoirCommentaireProduit {
     public Connection connexion;
    public UtilDB base;
    public ResultSet resultSet,resultSet2;
    public java.sql.Statement statement;
    public String request = "";
    int taille=0,i=0;

    public VoirCommentaireProduit() {
        try{
            base  = new UtilDB();
            connexion = base.getConn();
            statement = connexion.createStatement();             
        }catch(Exception exception){
        }
    }
    
    
    public Object[][]commentaireProduit(String idProduit)
    {
       
        try
        {
           
           request="select produit.idproduit,produit.idcategorie,produit.designation,produit.description,produit.image,produit.prix, commentaireproduit.idclient,commentaireproduit.contenu,commentaireproduit.datecomm,client.nomclient from produit join commentaireproduit on produit.idproduit=commentaireproduit.idproduit join client on client.idclient=commentaireproduit.idclient where  produit.idproduit="+idProduit+"";
           ResultSet resultSet=statement.executeQuery(request);
           // JOptionPane.showMessageDialog(null,request);
            System.out.print(request);
            while(resultSet.next())
            {
                taille=resultSet.getRow();
               
            }
        }
        catch(Exception ex)
        {
            
        }
        
        Object[][]reponse=new Object[taille][10];
        try{
            
            resultSet2=statement.executeQuery(request);
            while(resultSet2.next())
            {
                reponse[i][0]=resultSet2.getInt(1);
                reponse[i][1]=resultSet2.getInt(2);
                reponse[i][2]=resultSet2.getString(3);
                reponse[i][3]=resultSet2.getString(4);
                reponse[i][4]=resultSet2.getString(5);
                reponse[i][5]=resultSet2.getDouble(6);
                reponse[i][6]=resultSet2.getInt(7);
                reponse[i][7]=resultSet2.getString(8);
                reponse[i][8]=resultSet2.getDate(9);
                reponse[i][9]=resultSet2.getString(10);
                i++;
            } 
          
        }catch(Exception ex)
        {
            JOptionPane.showMessageDialog(null, "Probleme de requete commentaireProduit:"+ ex);
        }
        
        return reponse;
    }
}

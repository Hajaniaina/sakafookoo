/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FonctionJaime;

import java.sql.Connection;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import utilitaire.UtilDB;

/**
 *
 * @author User
 */
public class InsertJaime {
    
    public Connection connexion;
    public UtilDB base;
    public ResultSet resultSet;
    public java.sql.Statement statement;
    public String request = "";
     public void insertJaime(String idClient,String idProduit)
     {
       try
       {
           base=new UtilDB();
           connexion=base.getConn();
           Date daty = Calendar.getInstance().getTime();
           DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
           String today = formatter.format(daty);
           request="insert into jaimeplat (idclient,idplat,daty) values ("+Integer.parseInt(idClient)+","+Integer.parseInt(idProduit)+",'"+today+"')";
           statement=connexion.createStatement();
           statement.executeUpdate(request);
           connexion.close();
       }catch(Exception ex)
       {
           ex.printStackTrace();
       }
   }
}

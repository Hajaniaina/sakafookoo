/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FonctionRecherche;

import fonction.FonctionMenu;
import java.sql.Connection;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import javax.swing.JOptionPane;
import objet.DetailMenu;
import objet.Produit;
import objet.Resto;
import utilitaire.UtilDB;

/**
 *
 * @author User
 */
public class Find {
    
   public Connection connexion;
    public UtilDB base;
    public ResultSet resultSet;
    public java.sql.Statement statement;
    public String request = "";

    public Find() {
        try{
            base  = new UtilDB();
            connexion = base.getConn();
            statement = connexion.createStatement();             
        }catch(Exception exception){
        }
    }
    
    
    public ArrayList<DetailMenu>find(String nomPlat,String prixMin,String prixMax)
    {
        ArrayList<DetailMenu> liste=new ArrayList<DetailMenu>();
        ArrayList<DetailMenu> resp=new ArrayList<DetailMenu>();
        Date daty = Calendar.getInstance().getTime();
        DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        String today = formatter.format(daty);
        
        
        try{
            resp=new FonctionMenu().listerMenus();
            if(nomPlat==null || nomPlat=="")
            {
                nomPlat="a";
            }
            if(prixMin==""|| prixMin==null)
            {
                prixMin="0";
            }
            if(prixMax==""|| prixMax==null)
            {
                prixMax="1000000000";
            }
          String req = "select iddetailMenu,prix,designation as designation,detailmenu.idProduit as idProduit,detailmenu.idResto,detailmenu.idmenu,nommenu,nomresto,resto.description,produit.idcategorie,image from detailmenu join resto on resto.idResto=detailmenu.idresto join menu on detailmenu.idmenu=menu.idmenu join produit on produit.idProduit=detailmenu.idProduit  where dateMenu<='"+today+"' and prix<"+prixMax+" and prix>"+prixMin+" and designation like '%"+nomPlat+"%' ORDER BY random()"; 
          System.out.println(req);
           try{
            ResultSet res= statement.executeQuery(req);
            while(res.next()){
            DetailMenu det = new DetailMenu();
            det.setIdDetailMenu(res.getInt("idDetailMenu"));
            det.setIdMenu(res.getInt("idmenu"));
            det.setNomMenu(res.getString("nommenu"));
            Produit p= new Produit();
            p.setIdProduit(res.getInt("idproduit"));
            p.setDesignation(res.getString("designation"));
            p.setPrix(res.getDouble("prix"));
            p.setIdCategorie(res.getInt("idcategorie"));
            p.setImage(res.getString("image"));
            det.setProduit(p);
            Resto resto=new Resto();
            resto.setIdResto(res.getInt("idResto"));
            resto.setDescription(res.getString("description"));
            resto.setNomResto(res.getString("nomresto"));

            det.setResto(resto);
            liste.add(det);
            }
            }catch(Exception exc){
            JOptionPane.showMessageDialog(null, exc);
        }
        }catch(Exception ex)
        {
            JOptionPane.showMessageDialog(null, "Probleme"+ex);
        }
        
      return liste;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fonction;

import com.google.gson.Gson;
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
import org.json.simple.parser.ParseException;
import utilitaire.UtilDB;

/**
 *
 * @author user
 */
public class FonctionMenu {
    public Connection connexion;
    public UtilDB base;
    public ResultSet resultSet;
    public java.sql.Statement statement;
    public String request = "";
    public FonctionMenu(){
	try{
            base  = new UtilDB();
            connexion = base.getConn();
            statement = connexion.createStatement();             
        }catch(Exception exception){
        }
    }
    
    public ArrayList<DetailMenu> listerMenus(){
        ArrayList<DetailMenu> liste = new ArrayList<>();
        Date daty = Calendar.getInstance().getTime();
        DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        String today = formatter.format(daty);
        
        String req = "select iddetailMenu,prix,designation as designation,detailmenu.idProduit as idProduit,detailmenu.idResto,detailmenu.idmenu,nommenu,nomresto,resto.description,produit.idcategorie,image from detailmenu join resto on resto.idResto=detailmenu.idresto join menu on detailmenu.idmenu=menu.idmenu join produit on produit.idProduit=detailmenu.idProduit  where dateMenu<='"+today+"' ORDER BY random()";
         
        //System.out.println(req);
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
            exc.printStackTrace();
        }
        return liste;
    }
    
     public ArrayList<DetailMenu> menuParCat(int idCategorie)
     {
           ArrayList<DetailMenu> liste = this.listerMenus();
           ArrayList<DetailMenu> retour=new ArrayList<>();
           int k=0;
           //JOptionPane.showMessageDialog(null, liste.size());
           for(int i=0;i<liste.size();i++)
           {
               
               if(liste.get(i).getProduit().getIdCategorie()==idCategorie)
               {
                    retour.set(k, liste.get(i));
                    k++;
               }
           }
           return retour;
     }
    public DetailMenu detailMenu(int id){
        DetailMenu det = new DetailMenu();
        
        String req = "select iddetailMenu,prix,designation as designation,detailmenu.idProduit as idProduit,detailmenu.idResto,detailmenu.idmenu,nommenu,nomresto,resto.description from detailmenu join resto on resto.idResto=detailmenu.idresto join menu on detailmenu.idmenu=menu.idmenu join produit on produit.idProduit=detailmenu.idProduit  where idDetailMenu='"+id+"'";
         
        System.out.println(req);
        try{
            ResultSet res= statement.executeQuery(req);
            while(res.next()){
                det.setIdDetailMenu(res.getInt("idDetailMenu"));
                det.setIdMenu(res.getInt("idmenu"));
                det.setNomMenu(res.getString("nommenu"));
                Produit p= new Produit();
                p.setIdProduit(res.getInt("idproduit"));
                p.setDesignation(res.getString("designation"));
                p.setPrix(res.getDouble("prix"));
                det.setProduit(p);
                
                Resto resto=new Resto();
                resto.setIdResto(res.getInt("idResto"));
                resto.setDescription(res.getString("description"));
                resto.setNomResto(res.getString("nomresto"));
                
                det.setResto(resto);
            }
            ResultSet resJ= statement.executeQuery("select * from jaimePlat where idPlat="+id);
            int count=0;
            while(resJ.next()){
                count++;
            }
            det.setNbJaime(count);
        }catch(Exception exc){
            exc.printStackTrace();
        }
        return det;
    }
    
    public String JSONlisterMenus() throws ParseException{
        ArrayList<DetailMenu> liste = listerMenus();
        Gson gson = new Gson();
        return(gson.toJson(liste));
    }
    
    public String JSONdetailMenu(int id) throws ParseException{
        DetailMenu liste = detailMenu(id);
        Gson gson = new Gson();
        return(gson.toJson(liste));
    }
    
    public ArrayList<DetailMenu> listerMenusParCategorie(int id){
        ArrayList<DetailMenu> liste = new ArrayList<>();
        Date daty = Calendar.getInstance().getTime();
        DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        String today = formatter.format(daty);
        
        String req = "select iddetailMenu,prix,designation as designation,detailmenu.idProduit as idProduit,detailmenu.idResto,detailmenu.idmenu,nommenu,nomresto,resto.description,image from detailmenu join resto on resto.idResto=detailmenu.idresto join menu on detailmenu.idmenu=menu.idmenu join produit on produit.idProduit=detailmenu.idProduit  where dateMenu<='"+today+"' AND produit.idCategorie="+id +"ORDER BY random()";
         
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
            exc.printStackTrace();
        }
        return liste;
    }
    
     public String JSONlisterMenusParCategorie(int id) throws ParseException{
        ArrayList<DetailMenu> liste = listerMenusParCategorie(id);
        Gson gson = new Gson();
        return(gson.toJson(liste));
    }
}

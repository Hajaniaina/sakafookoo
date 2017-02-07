/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fonction;

import com.google.gson.Gson;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import objet.Ingredient;
import objet.Produit;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import utilitaire.UtilDB;

/**
 *
 * @author user
 */
public class FonctionProduit {
    public Connection connexion;
    public UtilDB base;
    public ResultSet resultSet;
    public java.sql.Statement statement;
    public String request = "";
    public FonctionProduit(){
	try{
            base  = new UtilDB();
            connexion = base.getConn();
            statement = connexion.createStatement();             
        }catch(Exception exception){
        }
    }
    public ArrayList<Produit> listerTousLesProduits(){
        ArrayList<Produit> liste = new ArrayList<>();
        String req = "select * from produit";
        try{
            ResultSet res= statement.executeQuery(req);
            while(res.next()){
                Produit p = new Produit();
                p.setIdProduit(res.getInt("idProduit"));
                p.setIdCategorie(res.getInt("idCategorie"));
                p.setDesignation(res.getString("designation"));
                p.setDescription(res.getString("description"));
                p.setImage(res.getString("image"));
            }
        }catch(Exception exc){
            
        }
        return liste;
    }
    
    public Produit listerProduitParId(int id){
        Produit p = new Produit();
        String req = "select * from produit where idproduit="+id;
        
        try{
            ResultSet res= statement.executeQuery(req);
            while(res.next()){
                p.setIdProduit(res.getInt("idProduit"));
                p.setIdCategorie(res.getInt("idCategorie"));
                p.setDesignation(res.getString("designation"));
                p.setDescription(res.getString("description"));
                p.setImage(res.getString("image"));
            }
        }catch(Exception exc){
            
        }
        return p;
    }
    
    public ArrayList<Produit> listerParCategorie(int categorie){
        ArrayList<Produit> liste = new ArrayList<>();
        String req = "select * from produit where idCategorie="+categorie;
        try{
            ResultSet res= statement.executeQuery(req);
            while(res.next()){
                Produit p = new Produit();
                p.setIdProduit(res.getInt("idProduit"));
                p.setIdCategorie(res.getInt("idCategorie"));
                p.setDesignation(res.getString("designation"));
                p.setDescription(res.getString("description"));
                p.setPrix(res.getDouble("prix"));
                p.setImage(res.getString("image"));
            }
        }catch(Exception exc){
            
        }
        return liste;
    }
    
    public String JSONlisterParCategorie(int categorie) throws ParseException{
        ArrayList<Produit> liste = listerParCategorie(categorie);
        Gson gson = new Gson();
        return(gson.toJson(liste));
    }
    
    public ArrayList<Produit> listerParResto(int resto){
        ArrayList<Produit> liste = new ArrayList<>();
        String req = "select * from produit where idCategorie="+resto;
        try{
            ResultSet res= statement.executeQuery(req);
            while(res.next()){
                Produit p = new Produit();
                p.setIdProduit(res.getInt("idProduit"));
                p.setIdCategorie(res.getInt("idCategorie"));
                p.setDesignation(res.getString("designation"));
                p.setDescription(res.getString("description"));
                p.setImage(res.getString("image"));
            }
        }catch(Exception exc){
            
        }
        return liste;
    }
    public String JSONlisterParResto(int categorie) throws ParseException{
        ArrayList<Produit> liste = listerParResto(categorie);
        Gson gson = new Gson();
        return(gson.toJson(liste));
    }
    
    public ArrayList<Ingredient> listerIngredients(int idProduit){
        ArrayList<Ingredient> liste = new ArrayList<>();
        String req = "select ingredient.idIngredient,designation from produit_ingredient join produit on produit_ingredient.idProduit="
                + "produit.idProduit join ingredient on ingredient.idIngredient=produit_ingredient.idIngredient where produit.idProduit="+idProduit;
        try{
            ResultSet res= statement.executeQuery(req);
            while(res.next()){
               Ingredient ing = new Ingredient();
               ing.setIdIngredient(res.getInt("idIngredient"));
               ing.setDesignation(res.getString("designation"));
               liste.add(ing);
            }
        }catch(Exception exc){
            
        }
        return liste;
    }
    
    public String JSONlisterProduitParId(int id) throws ParseException{
        Produit liste = listerProduitParId(id);
        Gson gson = new Gson();
        return(gson.toJson(liste));
    }
}

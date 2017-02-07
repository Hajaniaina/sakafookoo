package fonction;
import com.google.gson.Gson;
import utilitaire.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import objet.*;
import org.json.simple.parser.ParseException;

public class FonctionCategorie {
    public Connection connexion;
    public UtilDB base;
    public ResultSet resultSet;
    public java.sql.Statement statement;
    public String request = "";
    public FonctionCategorie(){
	try{
            base  = new UtilDB();
            connexion = base.getConn();
            statement = connexion.createStatement();             
        }catch(Exception exception){
        }
    }
    
    public ArrayList<Categorie> listeCategories(){
        ArrayList<Categorie> liste = new ArrayList<>();
        String req = "select * from categorie";
        try{
            ResultSet res= statement.executeQuery(req);
            while(res.next()){
                Categorie cat = new Categorie();
                cat.setIdCategorie(res.getInt("idCategorie"));
                cat.setNomCategorie(res.getString("nomCategorie"));
                liste.add(cat);
            }
        }catch(Exception exc){
            
        }
        return liste;
        
    }
    public String JSONparseCat() throws ParseException{
        ArrayList<Categorie> liste = listeCategories();
       	Gson gson = new Gson();
        return(gson.toJson(liste));
    }
}

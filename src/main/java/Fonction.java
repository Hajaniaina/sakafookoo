
import java.sql.Connection;
import java.sql.ResultSet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author user
 */
public class Fonction {
    public Connection connexion;
    public UtilDB base;
    public ResultSet resultSet;
    public java.sql.Statement statement;
    public String request = "";
    public Fonction(){
	try{
            base  = new UtilDB();
            connexion = base.getConn();
            statement = connexion.createStatement();             
        }catch(Exception exception){
        }
    }
}

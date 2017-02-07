package utilitaire;

import java.net.URI;
import java.sql.*;
import javax.swing.JOptionPane;

public class UtilDB
{  
    public Connection getConn() throws Exception
    {
        String username ="" ;
         String password ="";
          String dbUrl ="";
      try{
       URI dbUri = new URI(System.getenv("DATABASE_URL"));
         username = dbUri.getUserInfo().split(":")[0];
         password = dbUri.getUserInfo().split(":")[1];
         dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();
      }catch(Exception ex)
      {
          
      }
        return DriverManager.getConnection(dbUrl, username, password);
    }
}

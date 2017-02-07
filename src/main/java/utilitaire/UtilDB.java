package utilitaire;

import java.sql.*;

public class UtilDB
{  
    public Connection getConn() throws Exception
    {
        Class.forName("org.postgresql.Driver");
        System.out.print("odddk");
        String url = "jdbc:postgresql://localhost:5432/sakafookoo";
        
        String user = "postgres";
        String passwd = "niaina";

        Connection conn = DriverManager.getConnection(url, user, passwd);
        
        return conn;
    }
}
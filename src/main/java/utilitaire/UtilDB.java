package utilitaire;

import java.net.URI;
import java.sql.*;

public class UtilDB
{  
    public Connection getConn() throws Exception
    {
       URI dbUri = new URI(System.getenv("postgres://fadibelbgvgquh:547e4b2004019c31bdc29db917fe4648447cd4b4e4efd147df661ab9be884238@ec2-54-163-253-94.compute-1.amazonaws.com:5432/ddjmtri86ldgpl"));
        String username = dbUri.getUserInfo().split(":")[0];
        String password = dbUri.getUserInfo().split(":")[1];
        String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();

        return DriverManager.getConnection(dbUrl, username, password);
    }
}

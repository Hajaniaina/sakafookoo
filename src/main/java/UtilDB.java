

import java.net.URI;
import java.sql.*;

public class UtilDB
{  
    public Connection getConn()  throws URISyntaxException, SQLException
    {
       String dbUrl = System.getenv("postgres://fadibelbgvgquh:547e4b2004019c31bdc29db917fe4648447cd4b4e4efd147df661ab9be884238@ec2-54-163-253-94.compute-1.amazonaws.com:5432/ddjmtri86ldgpl");
       return DriverManager.getConnection(dbUrl);
    }
}

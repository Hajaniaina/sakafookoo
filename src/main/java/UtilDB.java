

import java.sql.*;

public class UtilDB
{  
    public Connection getConn() throws Exception
    {
        Class.forName("org.postgresql.Driver");
        String url = "jdbc:postgresql://localhost:5432/sakafookoo";
        String user = "postgres";
        String passwd = "niaina";

        Connection conn = DriverManager.getConnection(url, user, passwd);
       // System.out.print("odddk");
        return conn;
    }
}
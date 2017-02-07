

import java.net.URI;
import java.sql.*;

public class UtilDB
{  
    public Connection getConn()  throws URISyntaxException, SQLException
    {
       String dbUrl = System.getenv("postgres://wbrueegggklfdg:f5ee4be198cb238354f92c461f6b98b7eb45e88adeb2ad3020836cb8973c352d@ec2-54-235-245-255.compute-1.amazonaws.com:5432/d7i51gj4rvqe99");
       return DriverManager.getConnection(dbUrl);
    }
}

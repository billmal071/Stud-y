package bean;

import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {
    static Connection getConnection() throws URISyntaxException, SQLException {
        Connection con = null;
        /*Connection con = null;
        String url = "jdbc:mysql://localhost:3306/studye?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        String username = "root"; //MySQL username
        String password = "rocket14#"; //MySQL password
        System.out.println("In DBConnection.java class ");*/

        try {
            /*try {
                Class.forName("com.mysql.cj.jdbc.Driver"); //loading MySQL drivers. This differs for database servers
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }*/
            //con = DriverManager.getConnection(url, username, password); //attempting to connect to MySQL database
            /*String dbUrl = System.getenv("JDBC_DATABASE_URL");
            con = DriverManager.getConnection(dbUrl);*/
            URI dbUri = new URI(System.getenv("DATABASE_URL"));

            String username = dbUri.getUserInfo().split(":")[0];
            String password = dbUri.getUserInfo().split(":")[1];
            String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath() + "?sslmode=require";
            con = DriverManager.getConnection(dbUrl, username, password);
            System.out.println("Printing connection object " + con.getSchema());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}

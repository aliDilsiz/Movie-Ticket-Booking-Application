import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 *
 * @author 1BestCsharp
 */
public class MyConnection {
    
    
    // create a function to connect with mysql database
    
    public static Connection getConnection(){
        
     
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/movieticket_database?zeroDateTimeBehavior=convertToNull","root","");
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }   
        return conn;
    }
    
    public static void ChangePort() throws ClassNotFoundException, SQLException {
        try {
        Connection conn = null;
        Class.forName("com.mysql.cj.jdbc.Driver");
        DriverManager.getConnection("jdbc:mysql://192.168.0.1:5000/myDB", "root", "");
    
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
    
}
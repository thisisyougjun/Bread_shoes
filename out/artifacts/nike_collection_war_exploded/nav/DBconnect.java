package nav;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
    public static Connection getConnection(){
        try{
            String url = "jdbc:oracle:thin:@localhost:1521:XE";
            String id = "system";
            String pw = "1234";
            Class.forName("oracle.jdbc.driver.OracleDriver");
            return DriverManager.getConnection(url,id,pw);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}

package javabase.main;
import java.sql.*;
public class JdbcTest {
	public static void JdbcTest_main() {
	    //driver name
	    String driver = "com.mysql.cj.jdbc.Driver";
	    //URL for mysql
	    String url = "jdbc:mysql://127.0.0.1:3306/mysql?useSSL=true";
	    //usrname & passwd
	    String user = "root";
	    String password = "zzhzj321zg*";
	    Connection CConn;
		try {
			
			Class.forName(driver);
			CConn = DriverManager.getConnection(url, user, password);
            if(!CConn.isClosed())
                System.out.println("Succeeded connecting to the Database!");
            
            Statement statement = CConn.createStatement();
            /* sql */
            String sql = "show tables";
            
            ResultSet rs = statement.executeQuery(sql);
            String col = null;
            System.out.println("==========all tables=====");
            while(rs.next()){
                col = rs.getString(1);

                //result
                System.out.println(col);
            }
            rs.close();
            CConn.close();
		}catch(ClassNotFoundException e) {   
            /* driver error */
            System.out.println("Sorry,can`t find the Driver!");   
            e.printStackTrace();   
            }catch(SQLException e) {
	            /* SQL SQLException */
	            e.printStackTrace();  
            }catch (Exception e) {
            e.printStackTrace();
        }finally{
            System.out.println("get data success.");
        }	
	}
}

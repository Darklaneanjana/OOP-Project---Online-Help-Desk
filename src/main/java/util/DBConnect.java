package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


//This is the Database connection creation class .

public class DBConnect extends CommonUtil {
    private static Connection con;
    public static final Logger log = Logger.getLogger(DBConnect.class.getName());
	// This works according to singleton pattern
	private DBConnect() {
	}
	
	/**
	 * Create Database connection for the given URL.
	 * 
	 * @return Connection this returns SQL connection for MySql Database
	 * 
	 * @throws ClassNotFoundException
	 *             - Thrown when an application tries to load in a class through
	 *             its string name
	 * @throws SQLException
	 *             - An exception that provides information on a database access
	 *             error or other errors
	 */
	
    public static Connection getDBConnection() {

//		 Create new connection objects when connection is closed or null
    	try {
	    	if (con == null || con.isClosed()) {
	    					Class.forName(properties.getProperty(CommonConstants.DRIVER_NAME));
	    					con = DriverManager.getConnection(properties.getProperty(CommonConstants.URL),properties.getProperty(CommonConstants.USERNAME), properties.getProperty(CommonConstants.PASSWORD));
	    				}
	    	}
        
        catch (Exception e) {
            System.out.println(e);
            log.log(Level.SEVERE, e.getMessage());
        }
        
    	return (con);
    }
}

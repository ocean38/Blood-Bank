/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author dell
 */
public class DButil {
    private static Connection conn;
    private static Statement st;
    private static final String DBURL="jdbc:mysql://localhost:3306/bloodbank?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    private static final String DBUSER="zzz";
    private static final String DBPASS="zzz";
    
    public static void connectDB()throws ClassNotFoundException,SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
        conn=DriverManager.getConnection(DBURL,DBUSER,DBPASS);
        st=conn.createStatement();
        }
    
    public static void create(String query)throws ClassNotFoundException,SQLException
    {
        connectDB();
        st.execute(query);
        
    }
    public static void insert(String query)throws ClassNotFoundException,SQLException
    {
        
        connectDB();
        st.executeUpdate(query);
    }
     public static void Delete(String query)throws ClassNotFoundException,SQLException
    {
        connectDB();
        st.executeUpdate(query);
        
    }
      public static void Update(String query)throws ClassNotFoundException,SQLException
    {
        connectDB();
        st.executeUpdate(query);
        
    }
       public static ResultSet read(String query)throws ClassNotFoundException,SQLException
    {
        connectDB();
       ResultSet rs=st.executeQuery(query);
       return rs;
        
    }
    
    
}

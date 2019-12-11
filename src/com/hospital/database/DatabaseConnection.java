package com.hospital.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
    static Connection con=null;
    public static Connection getConnection(String db,String user,String pass)
    {
        if (con != null) 
        	return con;
        return getNewConnection(db, user, pass);
    }

    private static Connection getNewConnection(String db_name,String user_name,String password)
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db_name+"?useSSL=false", user_name, password);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }

        return con;        
    }
} 
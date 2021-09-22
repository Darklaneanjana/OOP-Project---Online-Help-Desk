package com.example.HelpDesk;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


public class DBctrl {
    private static boolean isSuccess;
    private static Connection con = null;
    private static ResultSet rs = null;
    private static Statement stmt = null;
    private static Object Connection = null;

    public static boolean createTicket(String name,String title,String description,String priority){

        boolean isSuccess = false;

        try {
            Connection  = DBConnect.conn();
            stmt = con.createStatement();
            String sql = "insert into customer values (0,'"+name+"','"+title+"','"+description+"','"+priority+"')";
            int rs = stmt.executeUpdate(sql);

            if(rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }

        }
        catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }
}


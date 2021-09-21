package com.example.HelpDesk;//package com.example.HelpDesk;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    private static Connection con;

    public static Connection conn() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HelpDesk", "root", "1111");
        } catch (Exception e) {
            System.out.println(e);
        }
        return (con);
    }
}
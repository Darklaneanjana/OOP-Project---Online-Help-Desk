package com.example.HelpDesk;//package com.example.HelpDesk;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    private static Connection con;
    public static Connection conn() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("mysql://u50dyqskf65yx3pv:dTHBLGb0k7zDU0GgWRTo@bxehssf2kdnrycyetoau-mysql.services.clever-cloud.com:3306/bxehssf2kdnrycyetoau",
                    "u50dyqskf65yx3pv",
                    "dTHBLGb0k7zDU0GgWRTo ");
        } catch (Exception e) {
            System.out.println(e);
        }
        return (con);
    }
}
package com.example.HelpDesk;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

@WebServlet(name = "DBctrl", value = "/DBctrl")
public class DBctrl {

    public static boolean createTicket(String name,String title,String description,String priority){

        boolean isSucces = false;
        Connection con = DBConnect.conn();
        Statement stmt = con.createStatement();
        String sql = "insert into Ticket (title, description, assignedTo, priority, status_id, client_id, created_at, due_at)
        values ('Ticket 1', 'Ticket 1 description', '', '', 1, 1, now(), now() + interval 1 day);"

        return isSucces;
    }
}

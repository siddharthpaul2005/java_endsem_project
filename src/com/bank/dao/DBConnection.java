package com.bank.dao;

import java.sql.*;

public class DBConnection {
    private static final String URL = "jdbc:mysql://127.0.0.1:3306/bankdb";
    private static final String USER = "root";
    private static final String PASSWORD = "root";

    public static Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
/*
public static void main(String[] args) throws SQLException, ClassNotFoundException
{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con= DriverManager.getConnection(URL, USER, PASSWORD);
    String query = "SELECT * FROM accounts";
    Statement stmt = con.createStatement();

    //step 5: Executing the query
    ResultSet rs = stmt.executeQuery(query);

    //step 6: Showing the result
    while (rs.next()) {
        int acn = rs.getInt("account_number");

        double balance = rs.getInt("balance");


        System.out.println(

                        " | acc :: " + acn +
                        " | Age: " + balance

        );
    }
    stmt.close();
    con.close();
    rs.close();

}
*/



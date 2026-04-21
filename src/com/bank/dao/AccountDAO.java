package com.bank.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bank.exception.InsufficientBalanceException;

public class AccountDAO {

    //  Deposit
    public void deposit(int accNo, double amount) throws Exception {

        Connection con = DBConnection.getConnection();

        PreparedStatement ps = con.prepareStatement(
                "UPDATE accounts SET balance = balance + ? WHERE account_number = ?"
        );

        ps.setDouble(1, amount);
        ps.setInt(2, accNo);

        ps.executeUpdate();

        saveTransaction(con, accNo, "DEPOSIT", amount);

        con.close();
    }


    //  Withdraw
    public void withdraw(int accNo, double amount) throws Exception {

        Connection con = DBConnection.getConnection();

        // Step 1: Check balance
        PreparedStatement check = con.prepareStatement(
                "SELECT balance FROM accounts WHERE account_number = ?"
        );

        check.setInt(1, accNo);

        ResultSet rs = check.executeQuery();

        if (rs.next()) {

            double balance = rs.getDouble("balance");

            // 🚨 Business Rule
            if (amount > balance) {
                throw new InsufficientBalanceException("Insufficient Balance");
            }

            // Step 2: Update balance
            PreparedStatement ps = con.prepareStatement(
                    "UPDATE accounts SET balance = balance - ? WHERE account_number = ?"
            );

            ps.setDouble(1, amount);
            ps.setInt(2, accNo);

            ps.executeUpdate();

            saveTransaction(con, accNo, "WITHDRAW", amount);
        }

        con.close();
    }

    public double getBalance(int accNo) throws Exception {
        Connection con = DBConnection.getConnection();

        String sql = "SELECT balance FROM accounts WHERE account_number=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, accNo);

        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            return rs.getDouble("balance");
        }

        throw new RuntimeException("Account not found");
    }

    // Transaction Logger
    private void saveTransaction(Connection con, int accNo, String type, double amount) throws Exception {

        PreparedStatement ps = con.prepareStatement(
                "INSERT INTO transactions (account_number, type, amount) VALUES (?, ?, ?)"
        );

        ps.setInt(1, accNo);
        ps.setString(2, type);
        ps.setDouble(3, amount);

        ps.executeUpdate();
    }
}
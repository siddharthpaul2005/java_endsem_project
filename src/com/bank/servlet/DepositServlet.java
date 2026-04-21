package com.bank.servlet;

import com.bank.dao.AccountDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/deposit")
public class DepositServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            int accNo = Integer.parseInt(request.getParameter("accNo"));
            double amount = Double.parseDouble(request.getParameter("amount"));

            AccountDAO dao = new AccountDAO();
            dao.deposit(accNo, amount);

            response.sendRedirect("success.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
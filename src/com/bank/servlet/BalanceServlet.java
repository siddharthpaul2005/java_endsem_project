package com.bank.servlet;

import com.bank.dao.AccountDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/balance")
public class BalanceServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int accNo = Integer.parseInt(request.getParameter("accNo"));

        try {
            AccountDAO dao = new AccountDAO();
            double balance = dao.getBalance(accNo);

            request.setAttribute("balance", balance);
            request.getRequestDispatcher("balance.jsp").forward(request, response);

        } catch (Exception e) {
            request.setAttribute("error", e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
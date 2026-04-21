package com.bank.servlet;

import com.bank.dao.AccountDAO;
import com.bank.exception.InsufficientBalanceException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/withdraw")
public class WithdrawServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            int accNo = Integer.parseInt(request.getParameter("accNo"));
            double amount = Double.parseDouble(request.getParameter("amount"));

            AccountDAO dao = new AccountDAO();
            dao.withdraw(accNo, amount);

            response.sendRedirect("success.jsp");

        } catch (InsufficientBalanceException e) {
            request.setAttribute("error", e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("error", "Something went wrong");
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
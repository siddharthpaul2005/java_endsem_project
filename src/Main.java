//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
import com.bank.dao.AccountDAO;

import java.io.IOException;
import java.io.*;
public class Main {
    public static void main(String[] args) throws IOException {
        try {
            AccountDAO dao = new AccountDAO();

            dao.deposit(101, 1000);
            dao.withdraw(101, 500);

            System.out.println("DONE");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
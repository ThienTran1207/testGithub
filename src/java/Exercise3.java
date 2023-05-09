
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author Peanut
 */
public class Exercise3 extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = resp.getWriter()) {
            //nhan du lieu tu client
            int a, b, c, n;
            int sum = 0;
            int tich = 1;

            n = Integer.parseInt(req.getParameter("n"));

            String result = "";

            if (req.getParameter("select").equals("default")) {
                if (n < 1 && n > 100) {
                    result = "n phai tu 1-100";
                } else {
                    result = "Ban phai chon cac phep toan o duoi";
                }
            }

            if (req.getParameter("select").equals("sum")) {
                if (n < 1 && n > 100) {
                    result = "n phai tu 1-100";
                } else {
                    for (int i = 1; i <= n; i++) {
                        sum += i;
                    }
                    result=String.valueOf(sum);
                }
            }

            if (req.getParameter("select").equals("n!")) {
                if (n < 1 && n > 100) {
                    result = "n phai tu 1-100";
                } else {
                    for (int i = 1; i <= n; i++) {
                        tich *= i;
                    }
                    result=String.valueOf(tich);
                }

            }

            if (req.getParameter("select").equals("odd")) {
                if (n < 1 && n > 100) {
                    result = "n phai tu 1-100";
                } else {
                    for (int i = 1; i <= n; i++) {
                        if (i % 2 != 0) {
                            result = result + String.valueOf(i) + " ";
                        }
                    }
                }

            }

            if (req.getParameter("select").equals("even")) {
                if (n < 1 && n > 100) {
                    result = "n phai tu 1-100";
                } else {
                    for (int i = 1; i <= n; i++) {
                        if (i % 2 != 1) {
                            result = result + String.valueOf(i) + " ";
                        }
                    }
                }

            }

            if (req.getParameter("select").equals("prime")) {
                if (n < 1 && n > 100) {
                    result = "n phai tu 1-100";
                } else {
                    if (isPrimeNumber(n)) {
                        result = String.valueOf(n) + " la so nguyen to";
                    } else {
                        result = String.valueOf(n) + " khong phai la so nguyen to";
                    }
                }

            }
            //out.print(result);
            req.setAttribute("result", result);
            req.setAttribute("n", req.getParameter("n"));
            req.setAttribute("select", req.getParameter("select"));
            req.getRequestDispatcher("Exercise3.jsp").forward(req, resp);
        }
    }

    public boolean isPrimeNumber(int n) {
        // so nguyen n < 2 khong phai la so nguyen to
        if (n < 2) {
            return false;
        }
        // check so nguyen to khi n >= 2
        int squareRoot = (int) Math.sqrt(n);
        for (int i = 2; i <= squareRoot; i++) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}

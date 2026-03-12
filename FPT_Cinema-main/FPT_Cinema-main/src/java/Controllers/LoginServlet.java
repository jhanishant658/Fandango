/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DAL.AccountDAO;
import Models.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author PC-Phong
 */
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("Views/Login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember");
        AccountDAO.INSTANCE.loadAccount();
        PrintWriter out = response.getWriter();

        if (AccountDAO.INSTANCE.checkLogin(username, password)) {
            Account taiKhoan = AccountDAO.INSTANCE.getAccByUsername(username);
            HttpSession session = request.getSession();
            session.setAttribute("taiKhoan", taiKhoan);
            if (remember != null) {
                Cookie userCookie = new Cookie("rememberUser", username);
                Cookie passCookie = new Cookie("rememberPass", password);
                userCookie.setMaxAge(60 * 60 * 24 * 7); // 7 days
                passCookie.setMaxAge(60 * 60 * 24 * 7); // 7 days
                response.addCookie(userCookie);
                response.addCookie(passCookie);
            } else {
                // If unchecked, remove cookies
                Cookie userCookie = new Cookie("rememberUser", "");
                Cookie passCookie = new Cookie("rememberPass", "");
                userCookie.setMaxAge(0);
                passCookie.setMaxAge(0);
                response.addCookie(userCookie);
                response.addCookie(passCookie);
            }
            if (taiKhoan.getRole_id() == 0) {
                response.sendRedirect("AdminController");
            } else {
                response.sendRedirect("Home");
            }
        } else {
            request.setAttribute("error", "Incorrect username or password");
            request.getRequestDispatcher("Views/Login.jsp").forward(request, response);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

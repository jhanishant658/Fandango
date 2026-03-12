///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
// */
//package Controllers;
//
//import DAL.AccountDAO;
//import Models.Account;
//import java.io.IOException;
//import java.io.PrintWriter;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//import java.util.List;
//
///**
// *
// * @author PC
// */
//public class AdminEditMembership extends HttpServlet {
//
//    /**
//     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
//     * methods.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet AdminEditMembership</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet AdminEditMembership at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
//    }
//
//    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
//    /**
//     * Handles the HTTP <code>GET</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        HttpSession session = request.getSession();
//        Account adminAccount = (Account) session.getAttribute("taiKhoan");
//
//        if (adminAccount != null && adminAccount.getRole_id() == 0) {
//            String idParam = request.getParameter("id");
//            String typeParam = request.getParameter("type");
//
//            if (idParam != null && typeParam != null) {
//                int id = Integer.parseInt(idParam);
//                int type = Integer.parseInt(typeParam);
//
//                if (type == 0) {
//                    // Get account details for update
//                    Account detailAccount = AccountDAO.INSTANCE.getAccountById(id);
//                    request.setAttribute("detailaccount", detailAccount);
//                } else if (type == 1) {
//                    // Handle delete if needed
//                    // AccountDAO.INSTANCE.deleteAccountById(id);
//
//                }
//            }
//
//            String sortType = request.getParameter("sort");
//            boolean ascending = "asc".equals(sortType);
////            List<Account> accounts = AccountDAO.INSTANCE.getAccountsSortedBySpending(ascending);
//            AccountDAO.INSTANCE.getAccountsSortedBySpending(ascending);
//            request.setAttribute("accounts", AccountDAO.INSTANCE);
//            request.getRequestDispatcher("Views/admineditmembership.jsp").forward(request, response);
//        } else {
//            response.sendRedirect("Home");
//        }
//    }
//
//    /**
//     * Handles the HTTP <code>POST</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        try {
//            int id = Integer.parseInt(request.getParameter("account_id"));
//            String membershipLevel = request.getParameter("membership");
//            float TotalSpent = Float.parseFloat(request.getParameter("totalSpent"));
//            Account account = AccountDAO.INSTANCE.getAccountById(id);
//            Object iu = request.getParameter("btnInUp");
////            if (account != null) {
////                float newTotalSpent;
////
////                if ("VVIP".equals(membershipLevel)) {
////                    newTotalSpent = 8000000;
////                } else if ("VIP".equals(membershipLevel)) {
////                    newTotalSpent = 4000000;
////                } else {
////                   
////                    newTotalSpent = (float) account.getTotal_spent();
////                    if (newTotalSpent >= 4000000) {
////                        newTotalSpent = 0; 
////                    }
////                }
////
////                // Update the account total_spent
////                AccountDAO.INSTANCE.updateTotalSpent(id, newTotalSpent);
////            }
//
//            if (iu != null) {
//                // Calculate new total spent
//                float updatedTotalSpent = account.getTotal_spent() + TotalSpent;
//
//                // Update the total spent in DB
//                AccountDAO.INSTANCE.updateTotalSpent(id, updatedTotalSpent);
//            }
//
//        } catch (NumberFormatException e) {
//            System.err.println("Error parsing account ID: " + e.getMessage());
//        }
//        doGet(request, response);
////        response.sendRedirect("AdminEditMembership");
//
//    }
//
//    /**
//     * Returns a short description of the servlet.
//     *
//     * @return a String containing servlet description
//     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}

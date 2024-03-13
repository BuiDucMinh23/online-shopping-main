/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.team3.onlineshopping.controllerSalesman;

import com.team3.onlineshopping.dal.AccountDAO;
import com.team3.onlineshopping.dal.CustomerDAO;
import com.team3.onlineshopping.dal.OrderDAO;
import com.team3.onlineshopping.dal.PaymentHistoryDAO;
import com.team3.onlineshopping.information.Email;
import com.team3.onlineshopping.information.HtmlContent;
import com.team3.onlineshopping.model.Account;
import com.team3.onlineshopping.model.Customer;
import com.team3.onlineshopping.model.Order;
import com.team3.onlineshopping.model.PaymentHistory;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

/**
 *
 * @author PC
 */
public class SaleOrderServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String type = request.getParameter("type");
        if (type == null || type.isEmpty()) {
            doGetAll(request, response);
        } else if (type.equalsIgnoreCase("delivered")) {
            doGetDelivered(request, response);
        } else if (type.equalsIgnoreCase("cancelled")) {
            doGetCancelled(request, response);
        } else if (type.equalsIgnoreCase("pending")) {
            doGetPending(request, response);
        } else if (type.equalsIgnoreCase("delivering")) {
            doGetDelivering(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        String status = request.getParameter("status");

        OrderDAO or_dao = new OrderDAO();
        CustomerDAO cus_dao = new CustomerDAO();
        AccountDAO acc_dao = new AccountDAO();
        or_dao.changeStatus(orderId, status);

        if (status.equalsIgnoreCase("delivered")) {
            PaymentHistoryDAO pay_dao = new PaymentHistoryDAO();

            LocalDateTime currentTime = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            String formattedDateTime = currentTime.format(formatter);

            PaymentHistory payment = new PaymentHistory(0, formattedDateTime, "direct", orderId, or_dao.getById(orderId).getCusId());
            pay_dao.add(payment);
            Customer cus = cus_dao.getById(or_dao.getById(orderId).getCusId());
            cus.setCusTotalPurchase(cus.getCusTotalPurchase() + or_dao.getById(orderId).getOrTotalPrice() + 30000.0);
            cus_dao.update(cus);

            //send email
            Account acc = acc_dao.getAccByCusId(cus.getCusId());
            String content = HtmlContent.orderNotification("delivered");
            Email.sendEmail(acc.getAccEmail(), acc.getAccId(), 3, "Đơn hàng đã được giao thành công", content);
        } else if (status.equalsIgnoreCase("cancelled")) {
            Customer cus = cus_dao.getById(or_dao.getById(orderId).getCusId());
            Account acc = acc_dao.getAccByCusId(cus.getCusId());
            String content = HtmlContent.orderNotification("cancelled");
            Email.sendEmail(acc.getAccEmail(), acc.getAccId(), 3, "Đơn hàng của bạn đã được hủy", content);
        }

//        response.sendRedirect("sale_order");
    }

    protected void doGetAll(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String index = request.getParameter("index");
<<<<<<< HEAD
        String status = request.getParameter("status");
=======
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
        int indexPage = index != null ? Integer.parseInt(index) : 1;
        OrderDAO or_dao = new OrderDAO();
        int countPage = or_dao.getTotalOrder();
        int endPage = countPage / 10 + (countPage % 10 != 0 ? 1 : 0);
        int startIndex = (indexPage - 1) * 10;

        System.out.println(indexPage);
        System.out.println(startIndex);

        List<Order> order = or_dao.getAll(indexPage);

        request.setAttribute("orderList", order);
        request.setAttribute("startIndex", startIndex);
        request.setAttribute("endPage", endPage);
        request.setAttribute("pageNumber", indexPage);
<<<<<<< HEAD
        request.setAttribute("status", status);
=======
//        request.getRequestDispatcher("test_ajax.jsp").forward(request, response);
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
        request.getRequestDispatcher("s_order.jsp").forward(request, response);
    }

    protected void doGetDelivered(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String index = request.getParameter("index");
        int indexPage = index != null ? Integer.parseInt(index) : 1;
        OrderDAO or_dao = new OrderDAO();
        int countPage = or_dao.getTotalOrder("delivered");
        int endPage = countPage / 10 + (countPage % 10 != 0 ? 1 : 0);
        int startIndex = (indexPage - 1) * 10;

        List<Order> order = or_dao.getAll("delivered", indexPage);

        request.setAttribute("orderList", order);
        request.setAttribute("startIndex", startIndex);
        request.setAttribute("endPage", endPage);
        request.setAttribute("pageNumber", indexPage);
        request.getRequestDispatcher("s_orderdelivered.jsp").forward(request, response);
    }

    protected void doGetCancelled(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String index = request.getParameter("index");
        int indexPage = index != null ? Integer.parseInt(index) : 1;
        OrderDAO or_dao = new OrderDAO();
        int countPage = or_dao.getTotalOrder("cancelled");
        int endPage = countPage / 10 + (countPage % 10 != 0 ? 1 : 0);
        int startIndex = (indexPage - 1) * 10;

        List<Order> order = or_dao.getAll("cancelled", indexPage);

        request.setAttribute("orderList", order);
        request.setAttribute("startIndex", startIndex);
        request.setAttribute("endPage", endPage);
        request.setAttribute("pageNumber", indexPage);
        request.getRequestDispatcher("s_ordercancelled.jsp").forward(request, response);
    }

    protected void doGetPending(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String index = request.getParameter("index");
        int indexPage = index != null ? Integer.parseInt(index) : 1;
        OrderDAO or_dao = new OrderDAO();
        int countPage = or_dao.getTotalOrder("pending");
        int endPage = countPage / 10 + (countPage % 10 != 0 ? 1 : 0);
        int startIndex = (indexPage - 1) * 10;

        List<Order> order = or_dao.getAll("pending", indexPage);

        request.setAttribute("orderList", order);
        request.setAttribute("startIndex", startIndex);
        request.setAttribute("endPage", endPage);
        request.setAttribute("pageNumber", indexPage);
        request.getRequestDispatcher("s_orderpending.jsp").forward(request, response);
    }

    protected void doGetDelivering(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String index = request.getParameter("index");
        int indexPage = index != null ? Integer.parseInt(index) : 1;
        OrderDAO or_dao = new OrderDAO();
        int countPage = or_dao.getTotalOrder("delivering");
        int endPage = countPage / 10 + (countPage % 10 != 0 ? 1 : 0);
        int startIndex = (indexPage - 1) * 10;

        List<Order> order = or_dao.getAll("delivering", indexPage);

        request.setAttribute("orderList", order);
        request.setAttribute("startIndex", startIndex);
        request.setAttribute("endPage", endPage);
        request.setAttribute("pageNumber", indexPage);
        request.getRequestDispatcher("s_orderdelivering.jsp").forward(request, response);
    }

}

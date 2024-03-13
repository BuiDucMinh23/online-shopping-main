/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.team3.onlineshopping.controllerSalesman;

import com.team3.onlineshopping.dal.AccountDAO;
import com.team3.onlineshopping.dal.AddressDAO;
<<<<<<< HEAD
import com.team3.onlineshopping.dal.CustomerDAO;
import com.team3.onlineshopping.dal.OrderDAO;
import com.team3.onlineshopping.dal.OrderDetailsDAO;
import com.team3.onlineshopping.dal.PaymentHistoryDAO;
import com.team3.onlineshopping.information.Email;
import com.team3.onlineshopping.information.HtmlContent;
import com.team3.onlineshopping.model.Account;
import com.team3.onlineshopping.model.Address;
import com.team3.onlineshopping.model.Customer;
import com.team3.onlineshopping.model.Order;
import com.team3.onlineshopping.model.OrderDetails;
import com.team3.onlineshopping.model.PaymentHistory;
=======
import com.team3.onlineshopping.dal.OrderDAO;
import com.team3.onlineshopping.dal.OrderDetailsDAO;
import com.team3.onlineshopping.model.Account;
import com.team3.onlineshopping.model.Address;
import com.team3.onlineshopping.model.Order;
import com.team3.onlineshopping.model.OrderDetails;
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
<<<<<<< HEAD
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
=======
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
import java.util.List;

/**
 *
 * @author PC
 */
public class SaleOrderDetailsServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SaleOrderDetailsServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SaleOrderDetailsServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        String type = request.getParameter("type");
        String index = request.getParameter("index");

        OrderDAO or_dao = new OrderDAO();
        AccountDAO acc_dao = new AccountDAO();
        AddressDAO add_dao = new AddressDAO();
        OrderDetailsDAO orde_deo = new OrderDetailsDAO();

        Order order = or_dao.getById(orderId);
        Account acc = acc_dao.getAccByCusId(order.getCusId());
        Address add = add_dao.getAddByOrderId(orderId);
        List<OrderDetails> orderDetails = orde_deo.getByOrderId(orderId);

        String status = "";
        if (order.getOrStatus().equalsIgnoreCase("delivered")) {
            status = "Đã giao hàng";
        } else if (order.getOrStatus().equalsIgnoreCase("cancelled")) {
            status = "Đã hủy";
        } else if (order.getOrStatus().equalsIgnoreCase("pending")) {
            status = "Đang giao hàng";
        } else if (order.getOrStatus().equalsIgnoreCase("delivering")) {
            status = "Chờ xử lý";
        }

        request.setAttribute("status", status);
        request.setAttribute("order", order);
        request.setAttribute("customer", acc);
        request.setAttribute("address", add);
        request.setAttribute("type", type);
        request.setAttribute("pageNumber", index);
        request.setAttribute("orderDetails", orderDetails);

        request.getRequestDispatcher("s_orderdetails.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        String status = request.getParameter("status");
        String type = request.getParameter("type");

        OrderDAO or_dao = new OrderDAO();
<<<<<<< HEAD
        CustomerDAO cus_dao = new CustomerDAO();
        AccountDAO acc_dao = new AccountDAO();
=======
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242

        Order order = or_dao.getById(orderId);
        order.setOrStatus(status);
        or_dao.update(order);

<<<<<<< HEAD
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

=======
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
        response.sendRedirect("sale_orderdetails?orderId=" + orderId);
    }

}

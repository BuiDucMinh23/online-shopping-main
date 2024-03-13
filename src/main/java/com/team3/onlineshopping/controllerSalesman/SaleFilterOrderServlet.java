/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.team3.onlineshopping.controllerSalesman;

import com.team3.onlineshopping.dal.OrderDAO;
import com.team3.onlineshopping.model.Order;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author PC
 */
public class SaleFilterOrderServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String type = request.getParameter("type");
        if (type == null || type.isEmpty()) {
            doFilterAll(request, response);
        } else if (type.equalsIgnoreCase("delivered")) {
            doFilterDelivered(request, response);
        } else if (type.equalsIgnoreCase("cancelled")) {
            doFilterCancelled(request, response);
        } else if (type.equalsIgnoreCase("pending")) {
            doFilterPending(request, response);
        }
    }

    protected void doFilterAll(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String tilte = request.getParameter("tilteOrder");
        String name = request.getParameter("nameCustomer");
        String beginDate = request.getParameter("beginDate");
        String endDate = request.getParameter("endDate");
        String statusOrder = request.getParameter("statusOrder");
        String address = request.getParameter("address");
        String beginPrice = request.getParameter("beginPrice");
        String endPrice = request.getParameter("endPrice");
        String index = request.getParameter("index");

        OrderDAO or_dao = new OrderDAO();

        //-------validate -------
        beginPrice = (beginPrice != null && !beginPrice.isEmpty()) ? beginPrice : null;
        endPrice = (endPrice != null && !endPrice.isEmpty()) ? endPrice : null;
        beginDate = (beginDate != null && !beginDate.isEmpty()) ? beginDate : null;
        endDate = (endDate != null && !endDate.isEmpty()) ? endDate : null;
        int indexPage = index != null ? Integer.parseInt(index) : 1;
        //---------------------------

        int countPage = or_dao.getTotalOrder(tilte, name, statusOrder, address, beginDate, endDate, beginPrice, endPrice);
        int endPage = countPage / 10 + (countPage % 10 != 0 ? 1 : 0);
        List<Order> list = or_dao.FilterOrder(tilte, name, statusOrder, address, beginDate, endDate, beginPrice, endPrice, indexPage);

        request.setAttribute("orderList", list);
        request.setAttribute("tilteOrder", tilte);
        request.setAttribute("nameCustomer", name);
        request.setAttribute("beginDate", beginDate);
        request.setAttribute("endDate", endDate);
        request.setAttribute("status", statusOrder);
        request.setAttribute("address", address);
        request.setAttribute("beginPrice", beginPrice);
        request.setAttribute("endPrice", endPrice);
        request.setAttribute("endPage", endPage);
        request.setAttribute("pageNumber", indexPage);
        request.setAttribute("filter", "FilterOn");
        if (list == null || list.isEmpty()) {
            request.setAttribute("messError", "Không có đơn hàng nào!");
        }

        request.getRequestDispatcher("s_order.jsp").forward(request, response);
    }

    protected void doFilterDelivered(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String tilte = request.getParameter("tilteOrder");
        String name = request.getParameter("nameCustomer");
        String beginDate = request.getParameter("beginDate");
        String endDate = request.getParameter("endDate");
        String address = request.getParameter("address");
        String beginPrice = request.getParameter("beginPrice");
        String endPrice = request.getParameter("endPrice");
        String index = request.getParameter("index");

        OrderDAO or_dao = new OrderDAO();

        //-------validate -------
        beginPrice = (beginPrice != null && !beginPrice.isEmpty()) ? beginPrice : null;
        endPrice = (endPrice != null && !endPrice.isEmpty()) ? endPrice : null;
        beginDate = (beginDate != null && !beginDate.isEmpty()) ? beginDate : null;
        endDate = (endDate != null && !endDate.isEmpty()) ? endDate : null;
        int indexPage = index != null ? Integer.parseInt(index) : 1;
        //---------------------------

        int countPage = or_dao.getTotalOrder(tilte, name, "delivered", address, beginDate, endDate, beginPrice, endPrice);
        int endPage = countPage / 10 + (countPage % 10 != 0 ? 1 : 0);
        List<Order> list = or_dao.FilterOrder(tilte, name, "delivered", address, beginDate, endDate, beginPrice, endPrice, indexPage);

        request.setAttribute("orderList", list);
        request.setAttribute("tilteOrder", tilte);
        request.setAttribute("nameCustomer", name);
        request.setAttribute("beginDate", beginDate);
        request.setAttribute("endDate", endDate);
        request.setAttribute("address", address);
        request.setAttribute("beginPrice", beginPrice);
        request.setAttribute("endPrice", endPrice);
        request.setAttribute("endPage", endPage);
        request.setAttribute("pageNumber", indexPage);
        request.setAttribute("filter", "FilterOn");
        if (list == null || list.isEmpty()) {
            request.setAttribute("messError", "Không có đơn hàng nào!");
        }

        request.getRequestDispatcher("s_orderdelivered.jsp").forward(request, response);
    }

    protected void doFilterCancelled(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String tilte = request.getParameter("tilteOrder");
        String name = request.getParameter("nameCustomer");
        String beginDate = request.getParameter("beginDate");
        String endDate = request.getParameter("endDate");
        String address = request.getParameter("address");
        String beginPrice = request.getParameter("beginPrice");
        String endPrice = request.getParameter("endPrice");
        String index = request.getParameter("index");

        OrderDAO or_dao = new OrderDAO();

        //-------validate -------
        beginPrice = (beginPrice != null && !beginPrice.isEmpty()) ? beginPrice : null;
        endPrice = (endPrice != null && !endPrice.isEmpty()) ? endPrice : null;
        beginDate = (beginDate != null && !beginDate.isEmpty()) ? beginDate : null;
        endDate = (endDate != null && !endDate.isEmpty()) ? endDate : null;
        int indexPage = index != null ? Integer.parseInt(index) : 1;
        //---------------------------

        int countPage = or_dao.getTotalOrder(tilte, name, "cancelled", address, beginDate, endDate, beginPrice, endPrice);
        int endPage = countPage / 10 + (countPage % 10 != 0 ? 1 : 0);
        List<Order> list = or_dao.FilterOrder(tilte, name, "cancelled", address, beginDate, endDate, beginPrice, endPrice, indexPage);

        request.setAttribute("orderList", list);
        request.setAttribute("tilteOrder", tilte);
        request.setAttribute("nameCustomer", name);
        request.setAttribute("beginDate", beginDate);
        request.setAttribute("endDate", endDate);
        request.setAttribute("address", address);
        request.setAttribute("beginPrice", beginPrice);
        request.setAttribute("endPrice", endPrice);
        request.setAttribute("endPage", endPage);
        request.setAttribute("pageNumber", indexPage);
        request.setAttribute("filter", "FilterOn");
        if (list == null || list.isEmpty()) {
            request.setAttribute("messError", "Không có đơn hàng nào!");
        }

        request.getRequestDispatcher("s_ordercancelled.jsp").forward(request, response);
    }

    protected void doFilterPending(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String tilte = request.getParameter("tilteOrder");
        String name = request.getParameter("nameCustomer");
        String beginDate = request.getParameter("beginDate");
        String endDate = request.getParameter("endDate");
        String address = request.getParameter("address");
        String beginPrice = request.getParameter("beginPrice");
        String endPrice = request.getParameter("endPrice");
        String index = request.getParameter("index");

        OrderDAO or_dao = new OrderDAO();

        //-------validate -------
        beginPrice = (beginPrice != null && !beginPrice.isEmpty()) ? beginPrice : null;
        endPrice = (endPrice != null && !endPrice.isEmpty()) ? endPrice : null;
        beginDate = (beginDate != null && !beginDate.isEmpty()) ? beginDate : null;
        endDate = (endDate != null && !endDate.isEmpty()) ? endDate : null;
        int indexPage = index != null ? Integer.parseInt(index) : 1;
        //---------------------------

        int countPage = or_dao.getTotalOrder(tilte, name, "pending", address, beginDate, endDate, beginPrice, endPrice);
        int endPage = countPage / 10 + (countPage % 10 != 0 ? 1 : 0);
        List<Order> list = or_dao.FilterOrder(tilte, name, "pending", address, beginDate, endDate, beginPrice, endPrice, indexPage);

        request.setAttribute("orderList", list);
        request.setAttribute("tilteOrder", tilte);
        request.setAttribute("nameCustomer", name);
        request.setAttribute("beginDate", beginDate);
        request.setAttribute("endDate", endDate);
        request.setAttribute("address", address);
        request.setAttribute("beginPrice", beginPrice);
        request.setAttribute("endPrice", endPrice);
        request.setAttribute("endPage", endPage);
        request.setAttribute("pageNumber", indexPage);
        request.setAttribute("filter", "FilterOn");
        if (list == null || list.isEmpty()) {
            request.setAttribute("messError", "Không có đơn hàng nào!");
        }

        request.getRequestDispatcher("s_orderpending.jsp").forward(request, response);
    }

}

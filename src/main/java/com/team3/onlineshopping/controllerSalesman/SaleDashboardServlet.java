/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.team3.onlineshopping.controllerSalesman;

import com.team3.onlineshopping.dal.AccountDAO;
import com.team3.onlineshopping.dal.OrderDAO;
import com.team3.onlineshopping.model.Account;
import com.team3.onlineshopping.model.AccountStatistic;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class SaleDashboardServlet extends HttpServlet {

    OrderDAO order_dao = new OrderDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<AccountStatistic> deliveredStatistic = new ArrayList<>();
        List<AccountStatistic> deliveringStatistic = new ArrayList<>();
        List<AccountStatistic> cancelledStatistic = new ArrayList<>();
        List<AccountStatistic> pendingStatistic = new ArrayList<>();

        String view = request.getParameter("view");
        view = (view == null) ? "" : view;
        if (view.equals("month")) {
            deliveredStatistic = order_dao.getStatisticOrderByMonths("delivered");
            deliveringStatistic = order_dao.getStatisticOrderByMonths("delivering");
            cancelledStatistic = order_dao.getStatisticOrderByMonths("cancelled");
            pendingStatistic = order_dao.getStatisticOrderByMonths("pending");
        } else {
            deliveredStatistic = order_dao.getStatisticOrderBy7days("delivered");
            deliveringStatistic = order_dao.getStatisticOrderBy7days("delivering");
            cancelledStatistic = order_dao.getStatisticOrderBy7days("cancelled");
            pendingStatistic = order_dao.getStatisticOrderBy7days("pending");

        }

//        List<Account> accTop5 = order_dao.getTop5Account();
        request.setAttribute("deliveredList", deliveredStatistic);
        request.setAttribute("deliveringList", deliveringStatistic);
        request.setAttribute("cancelledList", cancelledStatistic);
        request.setAttribute("pendingList", pendingStatistic);
//        request.setAttribute("roleList", roleStatistic);
//        request.setAttribute("statusList", statusStatistic);
//        request.setAttribute("accTop5", accTop5);
        request.setAttribute("view", view);
        request.getRequestDispatcher("s_dashboard.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        doGet(request, response);
    }


}

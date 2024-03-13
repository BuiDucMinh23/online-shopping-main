//10
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.team3.onlineshopping.controllerMarketer;

import com.team3.onlineshopping.dal.NewsDAO;
import com.team3.onlineshopping.model.News;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author admin
 */
public class MktSliderListServlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MktSliderListServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MktSliderListServlet at " + request.getContextPath() + "</h1>");
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
        NewsDAO nd = new NewsDAO();
        List<News> listNews;
        int numOfProduct, indexPage, endPage, startNumOr, endNumOr, cateNewsId;
        String index = request.getParameter("numberPage");
        String paging = request.getParameter("paging");
        String sliderStatus = request.getParameter("sliderStatus");
        String sortByView = request.getParameter("sortByView");
        String searching = request.getParameter("searching");
        String statusPopAdd = request.getParameter("statusPopAdd");
        String statusPopDel = request.getParameter("statusPopDel");
        String check = "";
        if (check.equalsIgnoreCase(searching)) {
            searching = null;
        }
        if (check.equalsIgnoreCase(sliderStatus)) {
            sliderStatus = null;
        }
        if (index == null) {
            index = "1";
            paging = "-1";
        }

//        try {
        cateNewsId = Integer.parseInt(request.getParameter("cateNewsId"));
        indexPage = Integer.parseInt(index);
        numOfProduct = nd.getAllByCateNewsId(cateNewsId, searching, sliderStatus, sortByView).size();

        endPage = numOfProduct / 16;
        startNumOr = (indexPage - 1) * 16;

        if (numOfProduct % 16 != 0) {
            endPage++;
        }
        listNews = nd.getAllByCateNewsIdPaging(cateNewsId, indexPage, searching, sliderStatus, sortByView);
        request.setAttribute("listNews", listNews);
        request.setAttribute("numberPage", indexPage);
        request.setAttribute("paging", paging);
        request.setAttribute("startNumOr", startNumOr);
        request.setAttribute("endPage", endPage);
        request.setAttribute("sliderStatus", sliderStatus);
        request.setAttribute("sortByView", sortByView);
        request.setAttribute("searching", searching);

        if (statusPopDel != null) {
            request.setAttribute("status", statusPopDel);
        } else if (statusPopAdd != null) {
            request.setAttribute("status", statusPopAdd);
        }

        request.getRequestDispatcher("m_slider-list.jsp").forward(request, response);
//        } catch (Exception e) {
//            System.out.println(e.getMessage());
//        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

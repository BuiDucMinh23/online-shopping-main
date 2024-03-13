//14
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.team3.onlineshopping.controllerMarketer;

import com.team3.onlineshopping.dal.CategoryProductDAO;
import com.team3.onlineshopping.dal.ProductDAO;
import com.team3.onlineshopping.model.CategoryProduct;
import com.team3.onlineshopping.model.Product;
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
public class MktProductListServlet extends HttpServlet {

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
            out.println("<title>Servlet MktProductList</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MktProductList at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO pd = new ProductDAO();
        CategoryProductDAO cd = new CategoryProductDAO();
        List<Product> listProduct;
        List<CategoryProduct> listCateProduct;
        int numOfProduct, indexPage, endPage, startNumOr, cateProId;
        String index = request.getParameter("numberPage");
        String paging = request.getParameter("paging");
        String proStatus = request.getParameter("proStatus");
        String sortByRank = request.getParameter("sortByRank");
        String check = "";
        String cateProIdd = request.getParameter("cateProId");
        String searching = request.getParameter("searching");
        String statusPopDel = request.getParameter("statusPopDel");
        String statusPopAdd = request.getParameter("statusPopAdd");

        if (check.equalsIgnoreCase(cateProIdd)) {
            cateProIdd = null;
        }
        if (check.equalsIgnoreCase(proStatus)) {
            proStatus = null;
        }
        if (check.equalsIgnoreCase(searching)) {
            searching = null;
        }

        if (index == null) {
            index = "1";
            paging = "-1";
        }

        try {
            if (cateProIdd != null || proStatus != null || sortByRank != null || searching != null) {
                if (cateProIdd == null) {
                    cateProId = -1;
                } else {
                    cateProId = Integer.parseInt(cateProIdd);

                }

                CategoryProduct cp;
                cp = cd.getById(cateProId);
                indexPage = Integer.parseInt(index);
                numOfProduct = pd.filterProductMkt(proStatus, cateProId, sortByRank, searching).size();
                endPage = numOfProduct / 16;

                if (numOfProduct % 16 != 0) {
                    endPage++;
                }
                startNumOr = (indexPage - 1) * 16;
                listCateProduct = cd.getAll();
                listProduct = pd.filterProductMktPaging(proStatus, cateProId, sortByRank, searching, indexPage);
                if (searching != null) {
                    if (listProduct.isEmpty()) {
                        request.setAttribute("msgNotFound", "Không có sản phẩm này!");
                    } else {
                        request.setAttribute("msgFound", "Những sản phẩm liên quan: " + searching + "");
                    }
                }
                request.setAttribute("proStatus", proStatus);
                request.setAttribute("sortByRank", sortByRank);
                request.setAttribute("searching", searching);
                request.setAttribute("listProduct", listProduct);
                request.setAttribute("numberPage", indexPage);
                request.setAttribute("paging", paging);
                request.setAttribute("listCateProduct", listCateProduct);
                request.setAttribute("startNumOr", startNumOr);
                request.setAttribute("cateProId", cateProIdd);
                request.setAttribute("categoryProduct", cp);
                request.setAttribute("endPage", endPage);
                request.getRequestDispatcher("m_product-list.jsp").forward(request, response);

            } else {

                indexPage = Integer.parseInt(index);
                numOfProduct = pd.getAll().size();
                startNumOr = (indexPage - 1) * 16;
                endPage = numOfProduct / 16;
                if (numOfProduct % 16 != 0) {
                    endPage++;
                }
                listCateProduct = cd.getAll();
                listProduct = pd.getAllProductPaging(indexPage);

                if (statusPopDel != null) {
                    request.setAttribute("status", statusPopDel);
                } else if (statusPopAdd != null) {
                    request.setAttribute("status", statusPopAdd);
                }
                request.setAttribute("listProduct", listProduct);
                request.setAttribute("numberPage", indexPage);
                request.setAttribute("paging", paging);
                request.setAttribute("listCateProduct", listCateProduct);
                request.setAttribute("startNumOr", startNumOr);
                request.setAttribute("endPage", endPage);
                request.getRequestDispatcher("m_product-list.jsp").forward(request, response);
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}

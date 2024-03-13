/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.team3.onlineshopping.controllerMarketer;

import com.team3.onlineshopping.dal.CategoryProductDAO;
import com.team3.onlineshopping.dal.CategoryProductDetailsDAO;
import com.team3.onlineshopping.dal.CategorySizeDAO;
import com.team3.onlineshopping.dal.EmployeeDAO;
import com.team3.onlineshopping.dal.ProductDAO;
import com.team3.onlineshopping.dal.ProductImageDAO;
import com.team3.onlineshopping.dal.ProductSizeDAO;
import com.team3.onlineshopping.model.Account;
import com.team3.onlineshopping.model.CategoryProduct;
import com.team3.onlineshopping.model.CategoryProductDetails;
import com.team3.onlineshopping.model.CategorySize;
import com.team3.onlineshopping.model.Employee;
import com.team3.onlineshopping.model.Product;
import com.team3.onlineshopping.model.ProductImage;
import com.team3.onlineshopping.model.ProductSize;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

/**
 *
 * @author admin
 */
//@WebServlet(urlPatterns = {"/save"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2 MB
        maxFileSize = 1024 * 1024 * 10, // 10 MB
        maxRequestSize = 1024 * 1024 * 50)

public class MktProductDetailServlet extends HttpServlet {

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
            out.println("<title>Servlet MktProductDetailServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MktProductDetailServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ProductDAO pd = new ProductDAO();
        ProductImageDAO pid = new ProductImageDAO();
        ProductSizeDAO psd = new ProductSizeDAO();
        CategorySizeDAO csd = new CategorySizeDAO();
        CategoryProductDAO cpd = new CategoryProductDAO();
        CategoryProductDetailsDAO cpdd = new CategoryProductDetailsDAO();
        List<ProductImage> productImage;
        List<ProductSize> listProductSize;
        List<CategorySize> listCateSize = csd.getAll();
        List<CategoryProduct> listCateProduct;
        listCateProduct = cpd.getAll();
        Product product;
        String getProductId;
        int countImg = 0;
        getProductId = request.getParameter("productid");
        String statusPop = request.getParameter("statusPop");

        int productId, totalQuantity;
        String checkCateSize = "";

        try {
            productId = Integer.parseInt(getProductId);
            product = pd.getById(productId);
            totalQuantity = psd.getTotalQuantity(productId);
            productImage = pid.getAllByProId(productId);
            listProductSize = psd.getAllProSizeById(productId);
<<<<<<< HEAD
            
=======
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
            // thêm
            CategoryProductDetails CateProDeId = cpdd.getByProId(productId);
            int compareCateProId = CateProDeId.getCateProId();

            if (request.getParameter("getCateProductId") != null) {
                compareCateProId = Integer.parseInt(request.getParameter("getCateProductId"));
            }
            List<CategoryProductDetails> listCateProDetails = cpdd.getAllByCateProId(compareCateProId);
            int cateProDetails = CateProDeId.getCateProDeId();
            if (request.getParameter("cateProDetails") != null) {
                cateProDetails = Integer.parseInt(request.getParameter("cateProDetails"));
            }
            // check xem size dạng gì (S-M-L or 35,36...)
            if (listProductSize.size() > 1 && listProductSize.size() <= 3) {
                checkCateSize = "fontsize";
            } else if (listProductSize.size() >= 4 && listProductSize.size() <= 10) {
                checkCateSize = "sizenumber";
            } else {
                checkCateSize = "none";
            }
            if(statusPop != null){
                request.setAttribute("status", statusPop);
            }
<<<<<<< HEAD
            product.setProDescription(product.getProDescription().replace("<br>", "\n"));
=======
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
            request.setAttribute("cateProDetails", cateProDetails);
            request.setAttribute("compareCateProId", compareCateProId);
            request.setAttribute("listCateProDetails", listCateProDetails);
            request.setAttribute("listCateProduct", listCateProduct);
            request.setAttribute("productid", getProductId);
            request.setAttribute("countImg", countImg);
            request.setAttribute("product", product);
            request.setAttribute("totalQuantity", totalQuantity);
            request.setAttribute("productImage", productImage);
            request.setAttribute("listCateSize", listCateSize);
            request.setAttribute("listProductSize", listProductSize);
            request.setAttribute("checkCateSize", checkCateSize);
            request.getRequestDispatcher("m_product-detail.jsp").forward(request, response);
        } catch (ServletException | IOException | NumberFormatException e) {
            System.out.println(e.getMessage());
        }

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductImageDAO pid = new ProductImageDAO();
        ProductDAO pd = new ProductDAO();
        ProductSizeDAO ps = new ProductSizeDAO();
        HttpSession session = request.getSession();
        Account acc = (Account) session.getAttribute("account");
        EmployeeDAO emp_dao = new EmployeeDAO();
        Employee emp = emp_dao.getByAccId(acc.getAccId());
        try {
            String getProName = request.getParameter("productName");
            String getProPrice = "";
            if (request.getParameter("proPrice") != null) {
                String getFormatNumProPrice = request.getParameter("proPrice");
                getProPrice = extractNumbers(getFormatNumProPrice);
            }
            String getProCost = "";
            if (request.getParameter("proCost") != null) {

                String getFormatNumProCost = request.getParameter("proCost");
                getProCost = extractNumbers(getFormatNumProCost);

            }
            String getProStatus = request.getParameter("proStatus");
            String getProDescription = request.getParameter("proDescription");
            String checkCateSize = request.getParameter("checkCateSize");
            String getCateProDeId = request.getParameter("cateProDetails");

            String proImgDefault, getProImage1, getProImage2, getProImage3;
            String getProId = "";
            if (request.getParameter("productid") != null) {
                getProId = request.getParameter("productid");

            }
            int proId, cateProDeId, proImage1, proImage2, proImage3;
            double proPrice, proCost;
            getProImage1 = request.getParameter("proImgId1");
            getProImage2 = request.getParameter("proImgId2");
            getProImage3 = request.getParameter("proImgId3");
<<<<<<< HEAD
            getProDescription = getProDescription.replace("\n", "<br>");
=======
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
            ProductImage proImg;
            Product product;

            // update product image
            proId = Integer.parseInt(getProId);

            proImage1 = Integer.parseInt(getProImage1);
            proImage2 = Integer.parseInt(getProImage2);
            proImage3 = Integer.parseInt(getProImage3);
            product = pd.getById(proId);

            // about productimg
            // convert to base 64
            if (request.getPart("newProImage1") != null && request.getPart("newProImage1").getSize() > 0) {
                Part filePart = (Part) request.getPart("newProImage1"); // "image" là tên của input file
                InputStream fileContent = filePart.getInputStream();
                getProImage1 = encodeImageToBase64(fileContent);
                proImg = pid.getById(proImage1);
                proImg.setProImgUrl("data:image/png;base64," + getProImage1);
                pid.update(proImg);

            }
            // convert to base 64

            if (request.getPart("newProImage2") != null && request.getPart("newProImage2").getSize() > 0) {
                Part filePart = (Part) request.getPart("newProImage2"); // "image" là tên của input file   
                InputStream fileContent = filePart.getInputStream();
                getProImage2 = encodeImageToBase64(fileContent);
                proImg = pid.getById(proImage2);
                proImg.setProImgUrl("data:image/png;base64," + getProImage2);
                pid.update(proImg);
            }

            // convert to base 64
            if (request.getPart("newProImage3") != null && request.getPart("newProImage3").getSize() > 0) {
                Part filePart = (Part) request.getPart("newProImage3"); // "image" là tên của input file
                InputStream fileContent = filePart.getInputStream();
                getProImage3 = encodeImageToBase64(fileContent);
                proImg = pid.getById(proImage3);
                proImg.setProImgUrl("data:image/png;base64," + getProImage3);
                pid.update(proImg);
            }

            // about product       
            proPrice = Double.parseDouble(getProPrice);
            proCost = Double.parseDouble(getProCost);
            cateProDeId = Integer.parseInt(getCateProDeId);

            // convert to base 64 productdefault
            if (request.getPart("NewProImgDefault") != null && request.getPart("NewProImgDefault").getSize() > 0) {
                Part filePart = (Part) request.getPart("NewProImgDefault"); // "image" là tên của input file
                InputStream fileContent = filePart.getInputStream();
                proImgDefault = encodeImageToBase64(fileContent);
                product.setProImgDefault("data:image/png;base64," + proImgDefault);
            }
            // set new value product
            product.setProName(getProName);
            product.setProPrice(proPrice);
            product.setProCost(proCost);
            product.setProStatus(getProStatus);
            product.setProDescription(getProDescription);
            product.setCateProDeId(cateProDeId);
            product.setEmId(emp.getEmId());

            // update size
            if (checkCateSize.equalsIgnoreCase("fontsize")) {
                ProductSize productSizeS, productSizeM, productSizeL;
                String getSizeS = request.getParameter("cateSizeId1");
                String getSizeM = request.getParameter("cateSizeId2");
                String getSizeL = request.getParameter("cateSizeId3");
                int sizeS, sizeM, sizeL, proSizeQuantityS, proSizeQuantityM, proSizeQuantityL;

                String getProSizeQuantityS = request.getParameter("proSizeQuantityS");
                String getProSizeQuantityM = request.getParameter("proSizeQuantityM");
                String getProSizeQuantityL = request.getParameter("proSizeQuantityL");

                // validate
                // parseInt
                sizeS = Integer.parseInt(getSizeS);
                sizeM = Integer.parseInt(getSizeM);
                sizeL = Integer.parseInt(getSizeL);
                proSizeQuantityS = Integer.parseInt(getProSizeQuantityS);
                proSizeQuantityM = Integer.parseInt(getProSizeQuantityM);
                proSizeQuantityL = Integer.parseInt(getProSizeQuantityL);
                // get productSize by Pro and Cate Id
                productSizeS = ps.getByProCateSizeId(proId, sizeS);
                productSizeM = ps.getByProCateSizeId(proId, sizeM);
                productSizeL = ps.getByProCateSizeId(proId, sizeL);
                // set new quantity
                productSizeS.setProSizeQuantity(proSizeQuantityS);
                productSizeM.setProSizeQuantity(proSizeQuantityM);
                productSizeL.setProSizeQuantity(proSizeQuantityL);
                // update
                ps.update(productSizeS);
                ps.update(productSizeM);
                ps.update(productSizeL);
            } else if (checkCateSize.equalsIgnoreCase("sizenumber")) {
                ProductSize productSize36, productSize37, productSize38, productSize39, productSize40, productSize41, productSize42;

                String getSize36 = request.getParameter("cateSizeId4");
                String getSize37 = request.getParameter("cateSizeId5");
                String getSize38 = request.getParameter("cateSizeId6");
                String getSize39 = request.getParameter("cateSizeId7");
                String getSize40 = request.getParameter("cateSizeId8");
                String getSize41 = request.getParameter("cateSizeId9");
                String getSize42 = request.getParameter("cateSizeId10");

                String getProSizeQuantity36 = request.getParameter("proSizeQuantity36");
                String getProSizeQuantity37 = request.getParameter("proSizeQuantity37");
                String getProSizeQuantity38 = request.getParameter("proSizeQuantity38");
                String getProSizeQuantity39 = request.getParameter("proSizeQuantity39");
                String getProSizeQuantity40 = request.getParameter("proSizeQuantity40");
                String getProSizeQuantity41 = request.getParameter("proSizeQuantity41");
                String getProSizeQuantity42 = request.getParameter("proSizeQuantity42");
                int size36, size37, size38, size39, size40, size41, size42, proSizeQuantity36, proSizeQuantity37, proSizeQuantity38, proSizeQuantity39, proSizeQuantity40, proSizeQuantity41, proSizeQuantity42;

                // validate
                // parseInt
                size36 = Integer.parseInt(getSize36);
                size37 = Integer.parseInt(getSize37);
                size38 = Integer.parseInt(getSize38);
                size39 = Integer.parseInt(getSize39);
                size40 = Integer.parseInt(getSize40);
                size41 = Integer.parseInt(getSize41);
                size42 = Integer.parseInt(getSize42);
                proSizeQuantity36 = Integer.parseInt(getProSizeQuantity36);
                proSizeQuantity37 = Integer.parseInt(getProSizeQuantity37);
                proSizeQuantity38 = Integer.parseInt(getProSizeQuantity38);
                proSizeQuantity39 = Integer.parseInt(getProSizeQuantity39);
                proSizeQuantity40 = Integer.parseInt(getProSizeQuantity40);
                proSizeQuantity41 = Integer.parseInt(getProSizeQuantity41);
                proSizeQuantity42 = Integer.parseInt(getProSizeQuantity42);

                // get productSize by Pro and Cate Id
                productSize36 = ps.getByProCateSizeId(proId, size36);
                productSize37 = ps.getByProCateSizeId(proId, size37);
                productSize38 = ps.getByProCateSizeId(proId, size38);
                productSize39 = ps.getByProCateSizeId(proId, size39);
                productSize40 = ps.getByProCateSizeId(proId, size40);
                productSize41 = ps.getByProCateSizeId(proId, size41);
                productSize42 = ps.getByProCateSizeId(proId, size42);

                // set new quantity
                productSize36.setProSizeQuantity(proSizeQuantity36);
                productSize37.setProSizeQuantity(proSizeQuantity37);
                productSize38.setProSizeQuantity(proSizeQuantity38);
                productSize39.setProSizeQuantity(proSizeQuantity39);
                productSize40.setProSizeQuantity(proSizeQuantity40);
                productSize41.setProSizeQuantity(proSizeQuantity41);
                productSize42.setProSizeQuantity(proSizeQuantity42);

                // update
                ps.update(productSize36);
                ps.update(productSize37);
                ps.update(productSize38);
                ps.update(productSize39);
                ps.update(productSize40);
                ps.update(productSize41);
                ps.update(productSize42);

            } else if (checkCateSize.equalsIgnoreCase("none")) {

                List<ProductSize> cateIdOver = ps.getByProductId(proId);

                String getTotalQuantity = request.getParameter("totalQuantity");
                int totalQuantity = Integer.parseInt(getTotalQuantity);

                ProductSize productSizeOver = ps.getByProCateSizeId(proId, cateIdOver.get(0).getCateSizeId());
                productSizeOver.setProSizeQuantity(totalQuantity);
                ps.update(productSizeOver);
            }

            pd.update(product);
            response.sendRedirect("mkt_productdetail?productid=" + proId+ "&statusPop=success");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    // function convert url to base 64
    private String encodeImageToBase64(InputStream imageInputStream) throws IOException {
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        byte[] buffer = new byte[4096];
        int bytesRead;

        while ((bytesRead = imageInputStream.read(buffer)) != -1) {
            outputStream.write(buffer, 0, bytesRead);
        }

        byte[] imageBytes = outputStream.toByteArray();
        return Base64.getEncoder().encodeToString(imageBytes);
    }

    private String extractNumbers(String input) {
        // Sử dụng biểu thức chính quy để loại bỏ các ký tự không phải số
        String numberOnly = input.replaceAll("[\\D]", "");
        return numberOnly;
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

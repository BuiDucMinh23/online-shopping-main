//11
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
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.Base64;

/**
 *
 * @author admin
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2 MB
        maxFileSize = 1024 * 1024 * 10, // 10 MB
        maxRequestSize = 1024 * 1024 * 50)
public class MktSliderDetailServlet extends HttpServlet {

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
            out.println("<title>Servlet MktSliderDetailServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MktSliderDetailServlet at " + request.getContextPath() + "</h1>");
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
        int newsId;
        
        String status = request.getParameter("statusPop");
        
        
        try {
            newsId = Integer.parseInt(request.getParameter("newsId"));
            News news = nd.getById(newsId);
<<<<<<< HEAD
            news.setNewsDescription(news.getNewsDescription().replace("<br>", "\n"));
=======
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
            request.setAttribute("news", news);
            request.setAttribute("status", status);
            request.getRequestDispatcher("m_slider-detail.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
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
        NewsDAO nd = new NewsDAO();
        String newsTitle = request.getParameter("newsTitle");
        String sliderStatus = request.getParameter("sliderStatus");
        String sliderDescription = request.getParameter("sliderDescription");
<<<<<<< HEAD
        sliderDescription = sliderDescription.replace("\n", "<br>");
=======
        
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
        int newsId;
        String proImgBanner;
        try {
            newsId = Integer.parseInt(request.getParameter("newsId"));
            
            News news = nd.getById(newsId);
            
            if (request.getPart("NewProImgBanner") != null && request.getPart("NewProImgBanner").getSize() > 0) {
                Part filePart = (Part) request.getPart("NewProImgBanner"); // "image" là tên của input file
                InputStream fileContent = filePart.getInputStream();
                proImgBanner = encodeImageToBase64(fileContent);
                news.setNewsImgUrl("data:image/png;base64," + proImgBanner);
            }
            
            news.setNewsTitle(newsTitle);
            news.setNewsStatus(sliderStatus);
            news.setNewsDescription(sliderDescription);
            nd.update(news);
            response.sendRedirect("mkt_sliderdetail?newsId=" + newsId + "&statusPop=success");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
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
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

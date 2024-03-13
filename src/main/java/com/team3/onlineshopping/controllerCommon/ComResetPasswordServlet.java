/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.team3.onlineshopping.controllerCommon;

import com.team3.onlineshopping.dal.AccountDAO;
import com.team3.onlineshopping.information.Email;
import com.team3.onlineshopping.information.HtmlContent;
import com.team3.onlineshopping.information.Token;
import com.team3.onlineshopping.model.Account;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ComResetPasswordServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AccountDAO acc_dao = new AccountDAO();
        String email = request.getParameter("email");
        email = (email == null) ? "" : email;

        Account acc = acc_dao.getByEmailStatus(email, "on");
        if (acc != null && !email.isEmpty()) {
            String token = Token.generateToken(acc.getAccId(), acc.getAccEmail(), 1);

            String resetPassLink = "http://localhost:9999/online-shopping/com_newpass?id="
                    + acc.getAccId() + "&token=" + token;

            // Create content email
            String content = HtmlContent.resetPassword(resetPassLink);

            Email.sendEmail(acc.getAccEmail(), acc.getAccId(), 1, "Thiết lập lại mật khẩu", content);
        } else {
            request.setAttribute("emailErr", "Địa chỉ email không tồn tại! ");
            request.getRequestDispatcher("c_resetpassword.jsp").forward(request, response);
        }

        // when user click send again mail
        request.setAttribute("email", email);
        request.getRequestDispatcher("c_sendmail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        String token = request.getParameter("token");

        // check time exist token
        if (Token.isTokenValid(token)) {
            String pass = request.getParameter("new_pass");
            String cfpass = request.getParameter("cf_pass");
            String passErr = "";
            String cfpassErr = "";

            if (!checkFormatPass(pass)) {
                passErr = "Mật khẩu phải gồm ít nhất 6 kí tự chứa cả chữ và số";
            }

            if (!pass.equals(cfpass)) {
                cfpassErr = "Mật khẩu xác nhận phải trùng mật khẩu mới";
            }

            if (!passErr.isEmpty() || !cfpassErr.isEmpty()) {
                request.setAttribute("passErr", passErr);
                request.setAttribute("cfpassErr", cfpassErr);
                request.setAttribute("token", token);
                request.setAttribute("id", id);
                request.getRequestDispatcher("c_newpassword.jsp").forward(request, response);
            }

            AccountDAO acc_dao = new AccountDAO();
            Account acc = acc_dao.getById(Integer.parseInt(id));
            acc.setAccPass(pass);
            acc_dao.update(acc);
            response.sendRedirect("c_resetsuccess.jsp");
        } else {
            response.sendRedirect("p_notfound.jsp");
        }

    }

    private boolean checkFormatPass(String newpass) {
        if (newpass.length() >= 6 && newpass.matches(".*[0-9]+.*") && newpass.matches(".*[a-z]+.*")) {
            return true;
        }
        return false;
    }

}

package com.akgarg.servlets;

import com.akgarg.dao.UserDao;
import com.akgarg.entity.User;
import com.akgarg.helper.DatabaseConnectionHelper;
import com.akgarg.helper.EmailSender;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class UpdateProfileHandlerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter writer = resp.getWriter();
        HttpSession session = req.getSession();

        User user = (User) session.getAttribute("currentLoginUser");

        if (user == null) {
            resp.sendRedirect("index");
        } else {
            String username = req.getParameter("username");
            String email = req.getParameter("email");
            String password = req.getParameter("new-password");
            String confirmPassword = req.getParameter("confirm-password");

            if (password.equals("") || confirmPassword.equals("")) {
                writer.println("405");
            } else if (password.equals(confirmPassword)) {
                UserDao dao = new UserDao(DatabaseConnectionHelper.getConnection());
                boolean updateUserResult = dao.updateUser(username, email, password);

                if (updateUserResult) {
                    String emailMessage = "Dear <strong>" + user.getUsername() + "</strong>,<br>" +
                            "Password of your Servlet Project account is successfully updated. Use your new password to login to your account.<br><br>" +
                            "If you have not do the same, then please change your password immediately";
                    EmailSender.sendEmail("Password updated Successfully", emailMessage, email);
                    writer.println("200");
                } else {
                    writer.println("500");
                }
            } else {
                writer.println("404");
            }

            DatabaseConnectionHelper.closeConnections();
        }
    }
}
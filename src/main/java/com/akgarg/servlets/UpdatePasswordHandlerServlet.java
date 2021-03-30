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

public class UpdatePasswordHandlerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();
        PrintWriter writer = resp.getWriter();

        String email = (String) session.getAttribute("forgot-email");

        if (email == null) {
            resp.sendRedirect("index");
        } else {
            UserDao dao = new UserDao(DatabaseConnectionHelper.getConnection());
            String newPassword = req.getParameter("new-password");

            User user = dao.getUserUsingEmail(email);
            user.setPassword(newPassword);
            boolean updateUserResult = dao.updateUser(user);

            if (updateUserResult) {
                String emailMessage = "Dear <strong>" + user.getUsername() + "</strong>," +
                        "<br>" +
                        "<br>" +
                        "Password of your Servlet Project account is successfully updated. Use your new password to login to your account.<br><br>" +
                        "If you have not do the same, then please change your password immediately." +
                        "<br>" +
                        "<br>" +
                        "<Strong>Regards</strong>" +
                        "<br>" +
                        "Akhilesh Garg" +
                        "<br>" +
                        "Admin-ServletProject(SP)";
                EmailSender.sendEmail("Password changed Successfully", emailMessage, email);
                session.removeAttribute("forgot-email");
                writer.println("200");
            } else {
                writer.println("500");
            }
            DatabaseConnectionHelper.closeConnections();
        }
    }
}
package com.akgarg.servlets;

import com.akgarg.dao.UserDao;
import com.akgarg.entity.User;
import com.akgarg.helper.DatabaseConnectionHelper;
import com.akgarg.helper.EmailSender;
import com.akgarg.helper.OtpGenerator;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class ForgotPasswordServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter writer = resp.getWriter();
        HttpSession session = req.getSession();

        String email = req.getParameter("forgot-password-email");
        UserDao userDao = new UserDao(DatabaseConnectionHelper.getConnection());
        User user = userDao.getUserUsingEmail(email);

        if (user == null) {
            writer.println("404");
            DatabaseConnectionHelper.closeConnections();
        } else {
            String username = user.getUsername();
            String otp = OtpGenerator.getOTP();

            // OTP email sending code
            String emailMessage = "Dear <strong>" + username +
                    "</strong>,<br><br>" +
                    "OTP to reset password of your Servlet Project account is <strong>" + otp + "</strong>. " +
                    "Use this OTP to reset your password." +
                    "<br>" +
                    "If you have not request for the password reset, it means someone is trying to access your account. We recommend you to keep your account safe and secure." +
                    "<br>" +
                    "<br>" +
                    "<Strong>Regards</strong>" +
                    "<br>" +
                    "Akhilesh Garg" +
                    "<br>" +
                    "Admin-ServletProject";

            boolean isEmailSend = EmailSender.sendEmail("Reset Password", emailMessage, email);

            if (isEmailSend) {
                session.setAttribute("OTP", otp);
                session.setAttribute("forgot-email", email);
                DatabaseConnectionHelper.closeConnections();
                writer.println("200");
            } else {
                DatabaseConnectionHelper.closeConnections();
                writer.println("500");
            }
        }
    }
}
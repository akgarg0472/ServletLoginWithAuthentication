package com.akgarg.servlets;

import com.akgarg.dao.UserDao;
import com.akgarg.entity.User;
import com.akgarg.helper.DatabaseConnectionHelper;
import com.akgarg.helper.EmailSender;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class SignupHandlerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter writer = resp.getWriter();

        String username = req.getParameter("signup-username");
        String email = req.getParameter("signup-email");
        String password = req.getParameter("signup-password");
        String confirmPassword = req.getParameter("signup-confirm-password");

        if (!password.equals(confirmPassword)) {
            writer.println("500");
        } else {
            UserDao dao = new UserDao(DatabaseConnectionHelper.getConnection());
            User user = new User(username, email, password);
            int addUserResult = dao.addUser(user);
            /*
             * addUserResponse = 1 (successfully added)
             * addUserResponse = 0 (user already registered)
             * addUserResponse = -1 (email already used)
             * addUserResponse = 404 (other SQLException)
             * */

            if (addUserResult == 1) {
                String emailMessage = "Hi <strong>" + username + "</strong>," +
                        "<br>" +
                        "<br>" +
                        "Thank you for joining SP, your account is ready and you can start using SP now." +
                        "<br>" +
                        "Due to so much data breach cases, we recommend you to keep your account safe and secure." +
                        " Please give your feedback to improve us." +
                        "<br>" +
                        "<br>" +
                        "We are looking forward for your valuable feedback." +
                        "<br><br>" +
                        "Thank you" +
                        "<br>" +
                        "<br>" +
                        "<Strong>Regards</strong>" +
                        "<br>" +
                        "Akhilesh Garg" +
                        "<br>" +
                        "Admin-ServletProject(SP)";

                EmailSender.sendEmail("Welcome " + username, emailMessage, email);
            }
            writer.println(addUserResult);
        }
        DatabaseConnectionHelper.closeConnections();
    }
}
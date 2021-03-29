package com.akgarg.servlets;

import com.akgarg.dao.UserDao;
import com.akgarg.entity.User;
import com.akgarg.helper.DatabaseConnectionHelper;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class SignupHandlerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("signup-username");
        String email = req.getParameter("signup-email");
        String password = req.getParameter("signup-password");
        String confirmPassword = req.getParameter("signup-confirm-password");

        PrintWriter writer = resp.getWriter();

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
            writer.println(addUserResult);
        }
    }
}

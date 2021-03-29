package com.akgarg.servlets;

import com.akgarg.dao.UserDao;
import com.akgarg.entity.User;
import com.akgarg.helper.DatabaseConnectionHelper;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginHandlerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        HttpSession session = req.getSession();
        PrintWriter writer = resp.getWriter();

        String loginEmail = req.getParameter("login-username");
        String loginPassword = req.getParameter("login-password");

        // perform database operation of username password verification
        // if successful authentication then return success as response else return something other
        // this response is used to check the server response by the javascript
        UserDao dao = new UserDao(DatabaseConnectionHelper.getConnection());
        User user = dao.getUserUsingEmail(loginEmail);

        if (user == null) {
            writer.println("404");
        } else {
            String userPassword = user.getPassword();
            if (userPassword.equals(loginPassword)) {
                session.setAttribute("currentLoginUser", user);
                writer.println("200");
            } else {
                writer.println("500");
            }
        }
    }
}
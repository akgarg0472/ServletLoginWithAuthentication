package com.akgarg.servlets;

import com.akgarg.entity.User;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LogoutHandlerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();

        User user = (User) session.getAttribute("currentLoginUser");

        if (user != null) {
            resp.setHeader("Cache-Control", "no-cache");
            resp.setHeader("Cache-Control", "no-store");
            resp.setHeader("Cache-Control", "must-revalidate");
            resp.setHeader("Pragma", "no-cache");
            resp.setHeader("Expires", "0");
            session.setAttribute("currentLoginUser", null);
            resp.sendRedirect("login");
        } else {
            resp.sendRedirect("index");
        }
    }
}
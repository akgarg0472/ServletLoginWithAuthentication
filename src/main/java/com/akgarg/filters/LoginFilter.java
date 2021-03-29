package com.akgarg.filters;

import javax.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        String username = request.getParameter("login-username");
        String password = request.getParameter("login-password");

        if (username != null && password != null && !username.equals("") && !password.equals("")) {
            chain.doFilter(request, response);
        } else {
            PrintWriter writer = response.getWriter();
            writer.println("error");
        }
    }
}

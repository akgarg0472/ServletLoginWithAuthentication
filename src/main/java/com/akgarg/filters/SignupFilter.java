package com.akgarg.filters;

import javax.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;

public class SignupFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        String username = request.getParameter("signup-username");
        String email = request.getParameter("signup-email");
        String password = request.getParameter("signup-password");
        String confirmPassword = request.getParameter("signup-confirm-password");

        PrintWriter writer = response.getWriter();

        if (username != null && email != null && password != null && confirmPassword != null
                && !username.equals("") && !email.equals("") && !password.equals("") && !confirmPassword.equals("")) {
            chain.doFilter(request, response);
        } else {
            writer.println("error");
        }
    }
}
